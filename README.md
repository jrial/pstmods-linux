# Planescape: Torment - Linux Mods

## What?

This is the Planescape: Torment mod collection, fixed up for clean Linux
installation. These mods are tested on the gog.com Linux version, but they may
also work on manual installations under Wine from the original CD Roms,
provided they are properly patched before applying these mods.

None of this work is mine. The only thing I did was change the .tp files so
they would install under Linux. Credits for the mod contents go to the
original authors.

These mods should be installed in a certain order:

1. The Bigg's Widescreen Mod - GPL v2, taken from a Linux compatible download
   at http://gibberlings3.net/forums/index.php?app=downloads&showcat=63
2. Ghostdog's Incredible UI Mod - No License, taken from
   http://www.shsforums.net/files/file/683-ghostdogs-pst-ui-mod-v22/
3. Qwinn's PS:T Ultimate WeiDU Fixpack - No License, taken from
   http://www.shsforums.net/files/file/647-pst-ultimate-weidu-fixpack-v413/
4. Qwinn's PS:T Unfinished Business - No License, taken from
   http://www.shsforums.net/files/file/648-pst-unfinished-business-v412/
5. Qwinn's PS:T Tweak Pack - No License, taken from
   http://www.shsforums.net/files/file/649-qwinns-pst-tweak-pack-v412/

For more info, see [Thunderpeel2001's blog post](http://thunderpeel2001.blogspot.be/2009/01/planescape-torment-fully-modded.html),
which also covers the required preparation steps for non-gog users.

I still need to write an installer script for this.
   

## How?

You need the WeiDU tools for Linux. You can find them
[here](http://www.weidu.org/~thebigg/). The bin folder needs to be in your
`$PATH`.

Once these preriquisites are in place, copy the contents of this repository
into your Planescape Torment installation folder. In my case, that was
`~/GOG Games/Planescape Torment/prefix/drive_c/GOG Games/Planescape Torment`.
First run tolower, which lowercases all file and folder names. Once that's
done, install the mods in the order as they are listed above. To install a
mod, simply run `weinstall ${mod_name}`, where `${mod_name}` stands for the
folder name of the mod. Recommendations on which parts to install and which
to skip are in Thunderpeel2001's blog post, previously linked, so I'll simply
refer there for more information.
