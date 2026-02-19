#!/usr/bin/env bash

echo "🦊 Ultimate Icon Replacement for Open Source Suite"
echo ""

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Step 1: Generate rounded icons"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sh _all_icon.sh design/export/icon_gimp_rounded.png gimp rounded
sh _all_icon.sh design/export/icon_inkscape_rounded.png inkscape rounded
sh _all_icon.sh design/export/icon_scribus_rounded.png scribus rounded
sh _all_icon.sh design/export/icon_synfig_rounded.png synfig rounded
sh _all_icon.sh design/export/icon_darktable_rounded.png darktable rounded
sh _all_icon.sh design/export/icon_shotcut_rounded.png shotcut rounded
sh _all_icon.sh design/export/icon_openshot_rounded.png openshot rounded
sh _all_icon.sh design/export/icon_kdenlive_rounded.png kdenlive rounded

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Step 2: Remove code signatures from protected apps"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "(This allows icon replacement on protected apps)"
echo ""

# Function to remove signature and install icon
install_icon() {
    local app_path=$1
    local icon_source=$2
    local icon_dest=$3
    local app_name=$4
    
    if [ -d "$app_path" ]; then
        echo "  → Processing $app_name..."
        
        # Remove quarantine attributes
        sudo xattr -cr "$app_path" 2>/dev/null
        
        # Remove code signature
        sudo codesign --remove-signature "$app_path" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "    ✓ Signature removed"
        fi
        
        # Copy icon
        if sudo cp "$icon_source" "$icon_dest" 2>/dev/null; then
            echo "    ✓ Icon installed successfully"
            # Touch to refresh
            sudo touch "$app_path"
            sudo touch "$app_path/Contents/Info.plist"
            return 0
        else
            echo "    ✗ Failed to copy icon"
            return 1
        fi
    else
        echo "  ⚠ $app_name not found at $app_path"
        return 1
    fi
}

# Install icons for all apps
install_icon "/Applications/GIMP.app" \
    "export/gimp/rounded/icon.icns" \
    "/Applications/GIMP.app/Contents/Resources/gimp.icns" \
    "GIMP"

install_icon "/Applications/Scribus.app" \
    "export/scribus/rounded/icon.icns" \
    "/Applications/Scribus.app/Contents/Resources/Scribus.icns" \
    "Scribus"

# Inkscape (multiple icon files)
if [ -d "/Applications/Inkscape.app" ]; then
    echo "  → Processing Inkscape..."
    sudo xattr -cr "/Applications/Inkscape.app" 2>/dev/null
    sudo codesign --remove-signature "/Applications/Inkscape.app" 2>/dev/null
    sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/inkscape.icns 2>/dev/null
    sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/icon.icns 2>/dev/null
    sudo cp export/inkscape/rounded/icon.icns /Applications/Inkscape.app/Contents/Resources/Inkscape-Generic.icns 2>/dev/null
    sudo touch "/Applications/Inkscape.app"
    sudo touch "/Applications/Inkscape.app/Contents/Info.plist"
    echo "    ✓ Inkscape icons installed"
fi

install_icon "/Applications/SynfigStudio.app" \
    "export/synfig/rounded/icon.icns" \
    "/Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns" \
    "Synfig Studio"

install_icon "/Applications/darktable.app" \
    "export/darktable/rounded/icon.icns" \
    "/Applications/darktable.app/Contents/Resources/Icons.icns" \
    "Darktable"

install_icon "/Applications/OpenShot Video Editor.app" \
    "export/openshot/rounded/icon.icns" \
    "/Applications/OpenShot Video Editor.app/Contents/Resources/icon.icns" \
    "OpenShot"

install_icon "/Applications/Shotcut.app" \
    "export/shotcut/rounded/icon.icns" \
    "/Applications/Shotcut.app/Contents/Resources/shotcut.icns" \
    "Shotcut"

install_icon "/Applications/kdenlive.app" \
    "export/kdenlive/rounded/icon.icns" \
    "/Applications/kdenlive.app/Contents/Resources/kdenlive.icns" \
    "Kdenlive"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Step 3: Refresh icon cache"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
sudo killall Finder
sudo killall Dock

echo ""
echo "✨ Done! Your custom icons should now be visible."
echo ""
echo "⚠️  Note: Removing code signatures means:"
echo "   - Apps will show as 'damaged' if moved"
echo "   - Updates may restore original icons"
echo "   - You can re-run this script after updates"
echo ""
echo "   To check signatures: codesign -dv /Applications/AppName.app"
echo ""
echo "-End"
