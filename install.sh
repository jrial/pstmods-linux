#!/bin/bash

# Ask for installation folder
read -ep "Planescape: Torment installation folder: " install_folder
# install_folder="${HOME}/GOG Games/Planescape Torment"
until grep -q 'Planescape: Torment' "${install_folder}/gameinfo" 2>/dev/null ; do
  echo
  echo "That doesn't look like a gog.com Planescape: Torment installation folder."
  echo "Please try again."
  echo
  read -ep "Planescape: Torment installation folder: " install_folder
done
# SRC_PATH="$(dirname "${BASH_SOURCE[0]}")"
SRC_PATH="$(dirname "$(readlink -f "$0")")"
TRG_PATH="${install_folder}/prefix/drive_c/GOG Games/Planescape Torment/"

# Get WeiDU
# I'm probably trying to be too smart for my own good, but I don't want to
# assume any tools except the standard Linux utilities. And wget. And unzip.
pushd "$SRC_PATH"
if [ ! -d "${SRC_PATH}/WeiDU-Linux" ] ; then
  weidu_dl=`wget -q "http://www.weidu.org/~thebigg/" -O - |grep "GNU/Linux binary" |grep "GNU/Linux binary"|sed -e 's/.*href="//'|sed -e 's/">.*//'`
  wget -q "${weidu_dl}" -O WeiDU-Linux.zip && unzip -qx WeiDU-Linux.zip && rm WeiDU-Linux.zip
fi
if [ "$(uname -m)" == "x86_64" ] ; then
  arch="amd64"
else
  arch="i386"
fi
export PATH=${PATH}:${SRC_PATH}/WeiDU-Linux/bin/${arch}/
echo $PATH

# Copy self over
if [ -d "${TRG_PATH}" ] ; then
  for mod in widescreen setup-ghostdogs-pst-ui setup-pst-fix setup-pst-ub setup-pst-tweak ; do
    cp -r "${SRC_PATH}/${mod}" "${TRG_PATH}"
  done
else
  echo "Can't find the 'prefix/drive_c/GOG Games/Planescape Torment/' subfolder"
  echo "Doesn't look like a valid installation folder after all."
  exit 1
fi

# Run "real" installer
pushd "${TRG_PATH}"
tolower
# We need to copy data into cache or widescreen installation fails
cp -r data/* cache/
for mod in widescreen setup-ghostdogs-pst-ui setup-pst-fix setup-pst-ub setup-pst-tweak ; do
  weinstall "${mod}"
done
# Delete the data we copied into the cache folder; it's no longer needed.
rm -Rf cache/*

# Remove self from target folder
for mod in widescreen setup-ghostdogs-pst-ui setup-pst-fix setup-pst-ub setup-pst-tweak ; do
  rm -Rf "${TRG_PATH}/${mod}"
done

popd ; popd
