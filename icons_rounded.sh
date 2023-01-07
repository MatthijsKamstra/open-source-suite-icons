#!/usr/bin/env bash

echo "🦊 Create Gimp/Inkscape/Scribus icon..."

echo "Create Rounded icons"
sh _all_icon.sh design/export/icon_gimp_rounded.png gimp rounded
sh _all_icon.sh design/export/icon_inkscape_rounded.png inkscape rounded
sh _all_icon.sh design/export/icon_scribus_rounded.png scribus rounded

echo "Move Rounded icons"
cp export/gimp/rounded/icon.icns /Applications/GIMP.app/Contents/Resources/gimp.icns
cp export/scribus/rounded/icon.icns /Applications/Scribus.app/Contents/Resources/Scribus.icns
cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/inkscape.icns

echo "Icons set "
echo "-End"