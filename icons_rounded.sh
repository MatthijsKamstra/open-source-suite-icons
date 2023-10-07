#!/usr/bin/env bash

echo "🦊 Create Gimp/Inkscape/Scribus/Synfig icon..."

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Create Rounded icons"
sh _all_icon.sh design/export/icon_gimp_rounded.png gimp rounded
sh _all_icon.sh design/export/icon_inkscape_rounded.png inkscape rounded
sh _all_icon.sh design/export/icon_scribus_rounded.png scribus rounded
sh _all_icon.sh design/export/icon_synfig_rounded.png synfig rounded
sh _all_icon.sh design/export/icon_darktable_rounded.png darktable rounded
sh _all_icon.sh design/export/icon_shotcut_rounded.png shotcut rounded
sh _all_icon.sh design/export/icon_openshot_rounded.png openshot rounded

echo "Move Rounded icons"
cp export/gimp/rounded/icon.icns /Applications/GIMP.app/Contents/Resources/gimp.icns
# scribus
cp export/scribus/rounded/icon.icns /Applications/Scribus.app/Contents/Resources/Scribus.icns
# inkscape
cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/inkscape.icns
cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/icon.icns
cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/Inkscape-Generic.icns
# synfig studio
cp export/synfig/rounded/icon.icns /Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns
#  OpenShot
cp export/openshot/rounded/icon.icns /Applications/OpenShot\ Video\ Editor.app/Contents/Resources/icon.icns
# Darktable
cp export/darktable/rounded/icon.icns /Applications/darktable.app/Contents/Resources/Icons.icns
# ShotCut
cp export/shotcut/rounded/icon.icns /Applications/Shotcut.app/Contents/Resources/shotcut.icns



echo "Icons set"
echo "-End"
