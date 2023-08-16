#!/usr/bin/env bash

echo "🦊 Create Gimp/Inkscape/Scribus/Synfig icon..."

echo "Create Rounded icons"
sh _all_icon.sh design/export/icon_gimp_rounded.png gimp rounded
sh _all_icon.sh design/export/icon_inkscape_rounded.png inkscape rounded
sh _all_icon.sh design/export/icon_scribus_rounded.png scribus rounded
sh _all_icon.sh design/export/icon_synfig_rounded.png synfig rounded

echo "Move Rounded icons"
cp export/gimp/rounded/icon.icns /Applications/GIMP.app/Contents/Resources/gimp.icns
cp export/scribus/rounded/icon.icns /Applications/Scribus.app/Contents/Resources/Scribus.icns
cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/inkscape.icns
cp export/synfig/rounded/icon.icns /Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns

echo "Icons set"
echo "-End"
