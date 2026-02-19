# Open Source Suite Icons

Welcome to the Open Source Suite Icons repository! This project is dedicated to providing a set of replacement icons for various open-source software applications that form a suite of powerful tools for creative and productive work.

![](icon.png)

## About

Open Source Suite Icons aims to enhance the visual appeal of your open-source software applications while maintaining their functionality. We believe that well-designed icons can greatly improve your user experience and make your workspace more visually pleasing.

## Features

- **Enhanced Aesthetics:** Our icons offer a fresh and modern look to your favorite open-source software applications, giving them a professional and unified appearance.

- **Recognition and Usability:** We have carefully designed these icons to retain the essence of each application's original icon, ensuring that you can easily identify and launch the software you need.

- **Diverse Selection:** This repository provides replacement icons for a wide range of open-source applications, ensuring that you can give a visual makeover to many of your essential tools.

- **User-Friendly Installation:** We've included clear and straightforward installation instructions to help you effortlessly replace the default icons of your open-source software.

## How to Use

Customizing your open-source software icons is a breeze with our step-by-step instructions. Whether you're using Windows, macOS, or Linux, you'll find guidance specific to your operating system in each application's respective folder.

## Icon Collection

Our collection includes icons for the following open-source applications:

- Gimp
- Inkscape
- Scribus
- Synfig
- Darktable
- OpenShot (\*)
- Shotcut
- Kdenlive

```
* = simple
```

|                            Gimp                            |                              Inkscape                              |                             Scribus                              |                             Synfig                             |                              Darktable                               |                              Openshot                              |                             ShotCut                              |
| :--------------------------------------------------------: | :----------------------------------------------------------------: | :--------------------------------------------------------------: | :------------------------------------------------------------: | :------------------------------------------------------------------: | :----------------------------------------------------------------: | :--------------------------------------------------------------: |
| ![Gimp](export/gimp/rounded/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/rounded/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/rounded/icon.iconset/icon_128x128.png) | ![Synfig](export/synfig/rounded/icon.iconset/icon_128x128.png) | ![Darktable](export/darktable/rounded/icon.iconset/icon_128x128.png) | ![Openshot](export/openshot/rounded/icon.iconset/icon_128x128.png) | ![Shotcut](export/shotcut/rounded/icon.iconset/icon_128x128.png) |

I used to have access to Adobe Suite. Most of my design work was done with Illustrator, Photoshop, Animate and (a little) Indesign. Now I want to replace that with opensource applications. And as an exersice I wanted to change the icons in a Adobe Suite kinda way.

## Application Replacement

Are you transitioning from Adobe Suite to open-source alternatives? Here's a quick reference for replacing Adobe Suite applications with open-source equivalents:

| Adobe Suite       | Open Source |
| ----------------- | ----------- |
| Adobe Photoshop   | Gimp        |
| Adobe Illustrator | Inkscape    |
| Adobe Indesign    | Scribus     |
| Adobe Animate     | Synfig      |
| Adobe Lightroom   | Darktable   |
| Adobe Premiere    | OpenShot    |
| Adobe Premiere    | Shotcut     |
| Adobe Premiere    | Kdenlive    |

## Installation of Open-Source Applications

The easiest way to install these open-source applications on macOS is via [HomeBrew](https://brew.sh/). Make sure you have Homebrew installed and run the following commands in your terminal:

```bash
# install
brew install gimp # 👈 gimp: 2.10.32
brew install inkscape # 👈 inkscape: 1.2.1
brew install scribus # 👈 scribus: 1.5.8
brew install synfigstudio # 👈 synfig: 1.5.1
brew install darktable # 👈 darktable: 4.4.2
brew install openshot-video-editor # 👈 openshot-video-editor: 3.1.1
brew install shotcut # 👈 shotcut: 23.07.29
brew install kdenlive # 👈 kdenlive: 24.08.1
```

> Please note that the provided versions may change over time, so keep this in mind if you encounter any discrepancies with the instructions.

## Creating New Icons

To create or modify icons, you can use the provided Inkscape file: [icons.svg](design/icons.svg). Ensure that you have the [Bebas Neue](https://fonts.google.com/specimen/Bebas+Neue) font installed or replace it with your preferred font.

Generate the icons using the [bash](all.sh) script as follows:

```bash
sh all.sh
```

For installing rounded icons, use the following command:

```bash
sh icons_rounded.sh
```

### macOS notes

Some apps are protected by macOS, so copying icons can fail with "Operation not permitted" even with `sudo`. If that happens:

- Quit the app first.
- Re-run the script so it can refresh Finder and Dock: [icons_rounded.sh](icons_rounded.sh).
- If it still fails, remove quarantine attributes and try again:

```bash
sudo xattr -cr "/Applications/GIMP.app"
sudo xattr -cr "/Applications/Scribus.app"
sudo xattr -cr "/Applications/OpenShot Video Editor.app"
```

- As a last resort, remove the code signature (updates may restore the original icon):

```bash
sudo codesign --remove-signature "/Applications/GIMP.app"
sudo codesign --remove-signature "/Applications/Scribus.app"
sudo codesign --remove-signature "/Applications/OpenShot Video Editor.app"
```

## Icon Paths

You can update the icons by copying them to the respective folders:

**On macOS:**

- Gimp: `/Applications/GIMP.app/Contents/Resources/gimp.icns`
- Inkscape: `/Applications/Inkscape.app/Contents/Resources/inkscape.icns`
- Scribus: `/Applications/Scribus.app/Contents/Resources/Scribus.icns`
- SynfigStudio: `/Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns`
- Darktable: `/Applications/darktable.app/Contents/Resources/Icons.icns`
- OpenShot: `/Applications/OpenShot\ Video\ Editor.app/Contents/Resources/icon.icns`
- Shotcut: `/Applications/Shotcut.app/Contents/Resources/shotcut.icns`
- Kdenlive: `/Applications/kdenlive.app/Contents/Resources/kdenlive.icns`

**On Windows:**:

- Gimp: ``
- Inkscape: ``
- Scribus: ``
- SynfigStudio: ``
- OpenShot: ``
- Darktable: ``
- Shotcut: ``

**On Linux:**

- Gimp: ``
- Inkscape: ``
- Scribus: ``
- SynfigStudio: ``
- OpenShot: ``
- Darktable: ``
- Shotcut: ``

## New Logo Styles

We offer a variety of logo styles for each application:

- Square
- Hexagon
- Rounded

Choose the style that best fits your preferences and workspace aesthetics.

| Type    | Gimp                                                       | Inkscape                                                           | Scribus                                                          | Synfig                                                         |
| ------- | ---------------------------------------------------------- | ------------------------------------------------------------------ | ---------------------------------------------------------------- | -------------------------------------------------------------- |
| Square  | ![Gimp](export/gimp/square/icon.iconset/icon_128x128.png)  | ![Inkscape](export/inkscape/square/icon.iconset/icon_128x128.png)  | ![Scribus](export/scribus/square/icon.iconset/icon_128x128.png)  |                                                                |
| Hexagon | ![Gimp](export/gimp/hexagon/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/hexagon/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/hexagon/icon.iconset/icon_128x128.png) |                                                                |
| Rounded | ![Gimp](export/gimp/rounded/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/rounded/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/rounded/icon.iconset/icon_128x128.png) | ![Synfig](export/synfig/rounded/icon.iconset/icon_128x128.png) |

<!--
## Old logos

| Gimp                       | Inkscape                      | Scribus                      |
| -------------------------- | ----------------------------- | ---------------------------- |
| ![](images/logo/gimp.webp) | ![](images/logo/inkscape.png) | ![](images/logo/scribus.png) |

Scribus | Gimp | Inkscape | Synfig

![](images/logo/taylorjay.hotglue.png)
-->

## Learn More

Explore the open-source alternatives to Adobe Suite:

- https://inkscape.org/
- https://www.gimp.org/ or https://github.com/Diolinux/PhotoGIMP
- https://www.scribus.net/
- https://synfig.org/
- https://www.darktable.org/
- https://www.openshot.org/
- https://shotcut.org/
- https://kdenlive.org/en/

Thank you for choosing Open Source Suite Icons to elevate your open-source software experience. We hope you find these icons valuable in enhancing your workspace's visual appeal!
