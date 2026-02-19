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

# Function to safely copy icon
copy_icon() {
    local source=$1
    local dest=$2
    local app_name=$3

    echo "  → Installing $app_name icon..."

    # Remove extended attributes that might prevent modification
    sudo xattr -cr "$(dirname "$dest")" 2>/dev/null

    # Try to copy with sudo
    if sudo cp "$source" "$dest" 2>/dev/null; then
        echo "    ✓ $app_name icon installed successfully"
        return 0
    else
        echo "    ✗ Failed to install $app_name icon (protected by macOS)"
        echo "      Alternative: Manually copy from: $source"
        return 1
    fi
}

# GIMP
copy_icon "export/gimp/rounded/icon.icns" "/Applications/GIMP.app/Contents/Resources/gimp.icns" "GIMP"

# Scribus
copy_icon "export/scribus/rounded/icon.icns" "/Applications/Scribus.app/Contents/Resources/Scribus.icns" "Scribus"

# Inkscape (multiple locations)
copy_icon "export/inkscape/rounded/icon.icns" "/Applications/Inkscape.app/Contents/Resources/inkscape.icns" "Inkscape"
sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/icon.icns 2>/dev/null
sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/Inkscape-Generic.icns 2>/dev/null

# Synfig Studio
copy_icon "export/synfig/rounded/icon.icns" "/Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns" "Synfig"

# Darktable
copy_icon "export/darktable/rounded/icon.icns" "/Applications/darktable.app/Contents/Resources/Icons.icns" "Darktable"

# OpenShot
copy_icon "export/openshot/rounded/icon.icns" "/Applications/OpenShot Video Editor.app/Contents/Resources/icon.icns" "OpenShot"

# Shotcut
copy_icon "export/shotcut/rounded/icon.icns" "/Applications/Shotcut.app/Contents/Resources/shotcut.icns" "Shotcut"

# Kdenlive
copy_icon "export/kdenlive/rounded/icon.icns" "/Applications/kdenlive.app/Contents/Resources/kdenlive.icns" "Kdenlive"

echo ""
echo "Touch app bundles to refresh icons..."

# Touch applications to force icon cache refresh
for app in "GIMP.app" "Scribus.app" "Inkscape.app" "SynfigStudio.app" "darktable.app" "OpenShot Video Editor.app" "Shotcut.app" "kdenlive.app"; do
    if [ -d "/Applications/$app" ]; then
        sudo touch "/Applications/$app" 2>/dev/null
        sudo touch "/Applications/$app/Contents/Info.plist" 2>/dev/null
    fi
done

echo ""
echo "Restarting Finder and Dock to refresh icon cache..."
# restart Finder and Dock
sudo killall Finder
sudo killall Dock

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Icons installation complete!"
echo ""
echo "If some icons failed due to protection:"
echo "1. Quit the protected app completely"
echo "2. Remove quarantine: sudo xattr -cr /Applications/[AppName].app"
echo "3. Try copying manually from the export/ folder"
echo "4. Or run: sudo codesign --remove-signature /Applications/[AppName].app"
echo "   (warning: this will require re-signing on app updates)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "-End"
