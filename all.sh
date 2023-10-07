#!/usr/bin/env bash

echo "🦊 Create Gimp/Inkscape/Scribus icon..."

echo "Square icons"
sh _all_icon.sh design/export/icon_gimp_square.png gimp square
sh _all_icon.sh design/export/icon_inkscape_square.png inkscape square
sh _all_icon.sh design/export/icon_scribus_square.png scribus square

echo "Hexagon icons"
sh _all_icon.sh design/export/icon_gimp_hexagon.png gimp hexagon
sh _all_icon.sh design/export/icon_inkscape_hexagon.png inkscape hexagon
sh _all_icon.sh design/export/icon_scribus_hexagon.png scribus hexagon

echo "Rounded icons"
sh _all_icon.sh design/export/icon_gimp_rounded.png gimp rounded
sh _all_icon.sh design/export/icon_inkscape_rounded.png inkscape rounded
sh _all_icon.sh design/export/icon_scribus_rounded.png scribus rounded
sh _all_icon.sh design/export/icon_synfig_rounded.png synfig rounded
sh _all_icon.sh design/export/icon_darktable_rounded.png darktable rounded
sh _all_icon.sh design/export/icon_shotcut_rounded.png shotcut rounded
sh _all_icon.sh design/export/icon_openshot_rounded.png openshot rounded
