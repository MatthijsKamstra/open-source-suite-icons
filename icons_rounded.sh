#!/usr/bin/env bash

echo "🦊 Create Gimp/Inkscape/Scribus/Synfig/Darktable/Shotcut/OpenShot/Kdenlive icon..."

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
sh _all_icon.sh design/export/icon_kdenlive_rounded.png kdenlive rounded

echo "Move Rounded icons"
sudo cp export/gimp/rounded/icon.icns /Applications/GIMP.app/Contents/Resources/gimp.icns
# scribus
sudo cp export/scribus/rounded/icon.icns /Applications/Scribus.app/Contents/Resources/Scribus.icns
# inkscape
sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/inkscape.icns
sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/icon.icns
sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/Inkscape-Generic.icns
# synfig studio
cp export/synfig/rounded/icon.icns /Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns
# Darktable
cp export/darktable/rounded/icon.icns /Applications/darktable.app/Contents/Resources/Icons.icns
#  OpenShot
cp export/openshot/rounded/icon.icns /Applications/OpenShot\ Video\ Editor.app/Contents/Resources/icon.icns
# ShotCut
cp export/shotcut/rounded/icon.icns /Applications/Shotcut.app/Contents/Resources/shotcut.icns
# Kdenlive
cp export/kdenlive/rounded/icon.icns /Applications/kdenlive.app/Contents/Resources/kdenlive.icns

# why is this not permitted
# cp: /Applications/GIMP.app/Contents/Resources/gimp.icns: Operation not permitted
# cp: /Applications/Scribus.app/Contents/Resources/Scribus.icns: Operation not permitted
# cp: /Applications/Inkscape.app/Contents/Resources/inkscape.icns: Operation not permitted
# cp: /Applications/Inkscape.app/Contents/Resources/icon.icns: Operation not permitted
# cp: /Applications/Inkscape.app/Contents/Resources/Inkscape-Generic.icns: Operation not permitted

# Force a relead


# Operation not permitted GIMP/Inkscape/Scribus
# GIMP
touch /Applications/GIMP.app
# scribus
touch /Applications/Scribus.app
# inkscape
touch /Applications/Inkscape.app
# synfig studio
touch /Applications/SynfigStudio.app
# Darktable
touch /Applications/darktable.app
#  OpenShot
touch /Applications/OpenShot\ Video\ Editor.app
# ShotCut
touch /Applications/Shotcut.app
# Kdenlive
touch /Applications/kdenlive.app


# restart Finder and Dock
sudo killall Finder
sudo killall Dock



# sudo mv /Applications/Inkscape.app /Users/matthijskamstra/Downloads/
# sudo chown -R :admin /Users/matthijskamstra/Downloads/Inkscape.app
# sudo chmod -R 755 /Users/matthijskamstra/Downloads/Inkscape.app
# # sudo mv /Users/matthijskamstra/Downloads/Inkscape.app /Applications/





echo "Icons set"
echo "-End"
