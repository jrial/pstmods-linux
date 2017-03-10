

===============================================================================
	        Ghostdog's Planescape: Torment User Interface
				
			        By GhostDog
                   with the invaluable help of Taplonaplo
				
				Version 2.2
===============================================================================



         [ Only works if Bigg's Widescreen Mod is already installed ]

             [ This User Interface mod supports all resolutions ]
                      (except those smaller than 800x480)

                     [ Compatible with all game versions ]





[CONTENTS]
  |
  |
 (1) Version History
  |
 (2) Introduction
  |
 (3) Features
  |
 (4) Compatibility and certain issues
  |
 (5) Installation
  |
 (6) Credits
  |
 (7) Mod distribution and how to contact me





---------------------
(1) Version History:
---------------------



v2.2 : -Added support for the Chinese version. Thanks go to a9214, yyfeng and
        maoliyuanjiu for adding the appropriate offsets and to Mephisto Devil
        Satan for testing it.
       -The movies are now stretched to fullscreen. Thanks to aqrit for
        providing the offset.
       -Celestial gate BAM has been changed back to its original size, centered
        and with its black borders removed. This was done because it caused 
        slow downs and other problems in high resolutions.
       -Updated to Weidu v2.31


v2.1 : -Approximately doubled the size of the dialog text area. This not only
        fixes a potential bug, but also greately improves reading experience.
        (Thanks to taplonaplo who found an important offset)
       -Due to the above enhancement, resolutions smaller than 800x480 will not
        be supported from now on.
       -Revamped the invetory window in resolutions < 1280x720 in order to
        bypass the tooltip flickering problem.
       -Added another font size (120% bigger).
       -Made some minor tweaks.
       -Updated to Weidu v2.13


v2.0 : -Complete overhaul of the mod. It now supports all resolutions.
       -The old UI enhancements are applied whenever possible and according to
        each resolution.
       -New bigger fonts have been added as an optional component. The fonts
        are used in the Dialog/Journal windows and the floating text. Thanks go
        to haen.
       -Used 7-zip for compression since it has good compression capabilities
        and it's free.
       -Updated to Weidu v2.12


v1.21: -Fixed a wrong offset that crashed the 2CD version of PST, when using
        the 1280x720 resolution.


v1.2 : -Added 1280x720 support.
       -Centered the dialog area for easier reading and revamped the dialog
        box.
       -Added a fix for the cursor's screen scrolling. Thanks go to scient for
        finding the offset pattern and to taplonaplo for implementing the code.
       -Added Qwinn's tweaks that make the installation smoother, faster and
        without warnings.
       -Now, when you install one of the bigger fonts, the in-game flating text
        will also be larger.
       -The 50% bigger fonts, are now a resized version of the fonts that are
        used for the in-game floating text. They look much better than the
        previous fonts.
       -The 30% bigger fonts are improved.
       -Fixed the journal so that the PC/NPC section has the correct
        background.
       -Made the worldmap fullscreen (the down bar is not visible now).
       -Updated to the latest version (v2.10) of WeiDU.


v1.0 : -Added 1280x1024 support.
       -Added the option to use two new types of bigger fonts in the dialog
        box. Check the "Features" section for more details. This is only
        for the English language versions.
       -Changed the name of the mod from "PST Widesreen UI mod" to "GhostDog's
        Planescape: Torment User Interface". Last time, I promise.


v0.9 : -Added 1280x768 support, since it's compatible with many LCDTV's and
        laptops that can't use the 1280x800 resolution.
       -Centered the "To quit the game press Alt-F4" cd-message.
       -Made the installation much more compact and fast. Now it checks
        automatically if Bigg's Widescreen mod is installed and in what
        resolution and proceeds accordingly.
       -The size of the mod is reduced dramatically due to a script that
        centers the journal pics. The same script places the loading bar to the
        correct position. (Credit goes to qwinn for the replace script, scient
        for the modified code and Taplonaplo for adjusting the script)
       -Resolved the tooltip flicker of the bottom UI bar in a way that doesn't
        involve the editing of the dialog.tlk. As a result the mod now is
        compatible with all language versions.
       -Fixed a wrong offset (cinematics) and re-edited the 'new life' screen.
       -Renamed the mod from PST 1280x800 UI to PST Widescreen UI.


v0.8 : -The first public version.






-------------------
 (2) Introduction:
-------------------


This is a User Interface modification which in combination with Bigg's
Widescreen Mod (http://www.gibberlings3.net/widescreen/) makes any resolution,
above or equal to 800x480, viable for Planescape: Torment by changing a number
of things in the User interface.


It all started with Bigg's mod that allows you to change the resolution in all
of the infinity engine games. Bigg's mod is great, but especially in Torment
when you change the resolution, almost all of the UI elements and game effects
are shown in the top-left area ,and the rest of the UI is chopped up. So what
this mod does is that it centers all these elements and enhances the UI with
original game art to fit nicely to any given resolution.


This started as a joint effort with Taplonaplo. Without his help, findings and
solutions the mod would have never reached this stage. I have made all of the
visual changes and Taplonaplo has provided many of the code tweaks and exe
offsets.





---------------
 (3) Features:
---------------


- Supports ALL resolutions (except those below 800x480). Resolutions smaller
  than 1280x720 have the default backgrounds centered. Resolutions bigger or
  equal to 1280x720 use enhanced backgrounds.

- The DIALOG window has been resized to fit the new resolutions and the text
  area is now MUCH larger. The dialog box background has been made slightly
  darker, to make reading easier. The screen now centers correctly to
  the character you're talking with. 

- The START SCREEN has been centered and has been given a background. The
  background has been created from two previously unused UI files.

- The CHARACTER CREATION and JOURNAL SCREENS have both been centered and
  given backgrounds. Both of the backgrounds are from original promotional
  posters of the game.

- All BOTTOM UI BAR elements have been revamped to fit all new resolutions
  nicely. This includes the main UI menu , the resting , formation and looting
  screens.

- The INVENTORY, SPELLS, MAP and STATS SCREENS have been centered and enhanced.
  They also appear in way that lets you see the rest of the gameplay area.

- The STORE SCREEN has been centered and the ACTION BOX now shows correctly at
  the spot you click.

- All SPELL EFFECTS and ANIMATIONS are now centered and show correctly. Spell
  backgrounds of Celestial host, Deathbolt and Bladestorm have been edited to
  fit bigger resolutions.

- All INFO/WARNING window messages have been centered and all TOOLTIPS show 
  correctly.

- LOADIND/SAVING/UNLOADING/CD screens have been centered and the LOADING BAR
  now shows correctly.

- WORLDMAP now shows full screen.

- You can now use BIGGER FONTS if you find the original text too small. The new
  fonts are more clear than the original and are applied only to the
  Dialog/Journal windows and to the floating text. You get to choose from 4
  different sizes.






---------------------------------------
 (4) Compatibility and known issues:
---------------------------------------


- YOU MUST START A NEW GAME since the Widescreen mod has issues with old
  saves from a different resolution.

- Resolutions smaller than 800x480 pixels are not supported.

- This mod is packed with WeiDU so it should be compatible with other WeiDU
  mods as long as they don't edit the UI. It has been tested with all of
  Qwinn's mods without any problems so far. Qwinn's mods are strongly
  recommended. For a comprehensive guide for having a fully moded game, look
  here: http://www.shsforums.net/index.php?showtopic=41205

- If you're using Vista or Win7 don't install the game in the Program files
  folder. These OS have restrictions in this folder that are not weidu mod
  friendly.

- If you're having problems installing the mod, disable your Antivirus and try
  again. Some AVs (especially AVG free) will not let the installation finish.

- This mod is compatible with both of the original 2CD and 4CD versions of the
  game and the GOG version.

- The mod, as far as I know, is compatible with any language version. The
  bigger fonts are compatible with all known language versions except Chinese,
  Korean and Japanese.

- In some random cases when you install multiple weidu mods that use different
  versions of weidu, the automatic update during the installtion gives an
  error. To fix that, you can copy the .exe with the most recent version over
  the other ones (rename it accordingly and replace the other mods executables)

- Using the 120% bigger fonts with resolutions lower than 1280x720 may cause a
  scrolling problem (it's unlikely, but I haven't thoroughly test it) with the
  dialog box, which will not let you continue. If this happens, just uninstall
  them and install a smaller font.

- If you want to install a Language pack, make sure to install it PRIOR to
  installing this mod, otherwise the game may crash.

- Desert Hell and Bladestorm backgrounds have been removed due to issues they
  cause at higher resolutions.

- The text asking you to put in a CD, is a bit off.

- Some flickering may occur when you open certain windows.

- You may experience black backgrounds around objects, this is an nvidia card
  related problem. You may also experience slowdowns or other graphical
  artifacts (especially with the fog of war), this is also probably
  an issue caused by some newer graphic cards. None of these issues have 
  anything to do with this mod. You can change all the options in the in-game
  video settings to "software" and see if this helps. Your best bet for a
  solution is the DDraw fix that can be found here :
  http://www.shsforums.net/topic/48732-ddraw-fix/
  Other solutions can be found here :
  http://www.shsforums.net/index.php?showtopic=43616
  http://www.shsforums.net/index.php?showtopic=30840





-------------------
 (5) Installation:
-------------------


[ For a detailed procedure of how to have a fully modded installation of PST
  look here : http://www.shsforums.net/index.php?showtopic=41205 ]



1. First of all you should make a full install of Planescape Torment. The Full
   install is not the "maximum installation" option from the game installer,
   it's a manual procedure. You can find instructions on how to do this, here:
   http://www.bootstrike.com/Torment/Online/tti1.html

2. Install Bigg's Widescreen Mod with your desired resolution. You can find
   Bigg's mod here: http://www.gibberlings3.net/widescreen/. Non-standard
   resolutions can only work in a window.

3. Extract the rar archive into your game directory.

4. Run Setup-GhostDog's-PST-UI.exe

5. The mod will detect if the Widescreen mod is installed and in what
   resolution and then install the appropriate UI elements.

6. Afterwards you'll be asked if you want to install Bigger fonts. If yes,
   choose your language and desired size. You get to choose between 3
   different sizes. I strongly recommend trying them out. Of course it's always
   a matter of resolution, screen size and distance.

You can easily uninstall the mod by running the .exe again and choosing the
[U]ninstall option. Afterwards, to completely remove all components, delete the
PST-Widescreen-UI folder, the Setup-PST-Widescreen-UI.exe and the
Setup-PST-Widescreen-UI.tp2 file.

Always uninstall the old version if you are to install a new one. If you want
to change the installed options, don't use the [R]e-install option because it
may cause problems. First uninstall and then install again.






--------------
 (6) Credits:
--------------

Many Thanks to :

- TAPLONAPLO who has done a fantastic job at solving almost all of the
  technical problems that appear when you change the game's resolution. Without
  his findings and fixes, this project would probably never have reached this
  stage. Taplonaplo has discovered most of the game .exe offsets. He also found   a way to move and resize the journal pics, the loading bar and the
  CD-messages. Finally, he has made a fix for the store dialog screen flicker
  and a fix for the contrast/brightness transparency problem.

- THE VANISHED ONE (another dweller of the RPGCodex forums) who helped me a lot
  when I started editing the UI and has also provided WEIDU code for the 
  version check and also the code to resize the MOS files. Check out his
  excellent 1024x768 UI for PST here:
  http://www.rpgcodex.net/phpBB/viewtopic.php?t=24932

- Qwinn, For helping me with WeiDu code questions and for making some great PST
  mods. He helped a lot with his replace script and code tweaks.

- Scient, for providing the modified code for the journal pics and loading bar.
  Also, for finding the offset pattern for the cursor scrolling fix and
  generally for doing extensive bugfixing with the PST engine. 

- Weak-ling, a member of the Gibberlings3 forums , who has found the action box
  and tooltip offsets.

- The Bigg: For creating the amazing widescreen mod for the Infinity engine
  games.

- Haen, for providing his awesome font bam generator, which I used to create
  the new fonts. You can find it here : 
  http://www.shsforums.net/index.php?showtopic=41417

- All the people that tested the bigger fonts for the various languages.

- a9214, yyfeng and maoliyuanjiu for providing the offsets for the Chinese
  version and to Mephisto Devil Satan for testing it.

- aqrit for providing the offsets for stretching the movies to full screen.






---------------------------------------------
 (7) Mod distribution and how to contact me:
---------------------------------------------


- Modders can use this UI mod as whole or parts of it , but they should give
  credit where it's due and I'd appreciate it if they let me know about it.

- If you want to host this mod at your site feel free to do so, but you should
  also let me know.

- Use this mod at your own risk, I don't take any responsibility for any damage
  it may cause.



The main mod Forum is this:
http://www.shsforums.net/index.php?showforum=571

You can also contact me at this thread:
http://www.rpgcodex.net/phpBB/viewtopic.php?t=26591

Finally you could try emailing me, but I don't check this one often: 
the_vampyri_lestat[at-]hotmail[dot-]com
