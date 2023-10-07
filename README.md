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

## Collection

Collection of suite icons for:

- Gimp
- Inkscape
- Scribus
- Synfig
- Darktable
- OpenShot
- Shotcut

Focused on OSX.

|                            Gimp                            |                              Inkscape                              |                             Scribus                              |                             Synfig                             |                              Darktable                               |                              Openshot                              |                             ShotCut                              |
| :--------------------------------------------------------: | :----------------------------------------------------------------: | :--------------------------------------------------------------: | :------------------------------------------------------------: | :------------------------------------------------------------------: | :----------------------------------------------------------------: | :--------------------------------------------------------------: |
| ![Gimp](export/gimp/rounded/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/rounded/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/rounded/icon.iconset/icon_128x128.png) | ![Synfig](export/synfig/rounded/icon.iconset/icon_128x128.png) | ![Darktable](export/darktable/rounded/icon.iconset/icon_128x128.png) | ![Openshot](export/openshot/rounded/icon.iconset/icon_128x128.png) | ![Shotcut](export/shotcut/rounded/icon.iconset/icon_128x128.png) |

I used to have access to Adobe Suite. Most of my design work was done with Illustrator, Photoshop, Animate and (a little) Indesign. Now I want to replace that with opensource applications. And as an exersice I wanted to change the icons in a Adobe Suite kinda way.

## Replacement

Currently I am replacing Adobe Suite with open source

| Adobe Suite       | Open Source |
| ----------------- | ----------- |
| Adobe Photoshop   | Gimp        |
| Adobe Illustrator | Inkscape    |
| Adobe Indesign    | Scribus     |
| Adobe Animate     | Synfig      |
| Adobe Lightroom   | Darktable   |
| Adobe Premiere    | OpenShot    |
| Adobe Premiere    | Shotcut     |

## Better replacement

I found this on the interwebs and I like that the different programs have a different color set, so I will use that color set as well.

![](images/redesign/4u9qo18dx6651.jpg)

## Install applications

Easiest way to install these apps on OSX is via [brew](https://brew.sh/).

Make sure you have brew installed and copy/paste in you terminal:

```bash
# install
brew install --cask gimp # 👈 gimp: 2.10.32
brew install --cask inkscape # 👈 inkscape: 1.2.1
brew install --cask scribus # 👈 scribus: 1.5.8
brew install --cask synfigstudio # 👈 synfig: 1.5.1
brew install --cask darktable # 👈 darktable: 4.4.2
brew install --cask openshot-video-editor # 👈 openshot-video-editor: 3.1.1
brew install --cask shotcut # 👈 shotcut: 23.07.29
```

> I added the version that will be installed (at the moment of writing). Those versions will change outside my controle but might explain why this document isn't up-to-date or doesn't work anymore (in the future)

## Create new icons

I have created a Inkscape file with the icons: [icons.svg](design/icons.svg).

If you want to add or modify, you need to install [Bebas Neue](https://fonts.google.com/specimen/Bebas+Neue) font or replace it with you own.

Create the icons with a [bash](all.sh) script:

```bash
sh all.sh
```

and to install the rounded icons:

```bash
sh icons_rounded.sh
```

## Path to applications

You can update the icons yourself by coping then in the correct folders

On OSX:

- Gimp: `/Applications/GIMP.app/Contents/Resources/gimp.icns`
- Inkscape: `/Applications/Inkscape.app/Contents/Resources/inkscape.icns`
- Scribus: `/Applications/Scribus.app/Contents/Resources/Scribus.icns`
- SynfigStudio: `/Applications/SynfigStudio.app/Contents/Resources/SynfigStudio.icns`
- OpenShot: `/Applications/OpenShot\ Video\ Editor.app/Contents/Resources/icon.icns`
- Darktable: `/Applications/darktable.app/Contents/Resources/Icons.icns`
- Shotcut: `/Applications/Shotcut.app/Contents/Resources/shotcut.icns`

On Windows:

- Gimp: ``
- Inkscape: ``
- Scribus: ``
- SynfigStudio: ``
- OpenShot: ``
- Darktable: ``
- Shotcut: ``

On Linux:

- Gimp: ``
- Inkscape: ``
- Scribus: ``
- SynfigStudio: ``
- OpenShot: ``
- Darktable: ``
- Shotcut: ``

## New Logos

| Type    | Gimp                                                       | Inkscape                                                           | Scribus                                                          | Synfig                                                         |
| ------- | ---------------------------------------------------------- | ------------------------------------------------------------------ | ---------------------------------------------------------------- | -------------------------------------------------------------- |
| Square  | ![Gimp](export/gimp/square/icon.iconset/icon_128x128.png)  | ![Inkscape](export/inkscape/square/icon.iconset/icon_128x128.png)  | ![Scribus](export/scribus/square/icon.iconset/icon_128x128.png)  |                                                                |
| Hexagon | ![Gimp](export/gimp/hexagon/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/hexagon/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/hexagon/icon.iconset/icon_128x128.png) |                                                                |
| Rounded | ![Gimp](export/gimp/rounded/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/rounded/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/rounded/icon.iconset/icon_128x128.png) | ![Synfig](export/synfig/rounded/icon.iconset/icon_128x128.png) |

## Old logos

<!--
| Gimp                       | Inkscape                      | Scribus                      |
| -------------------------- | ----------------------------- | ---------------------------- |
| ![](images/logo/gimp.webp) | ![](images/logo/inkscape.png) | ![](images/logo/scribus.png) |
-->

Scribus | Gimp | Inkscape | Synfig

![](images/logo/taylorjay.hotglue.png)

## Open source programs

- https://inkscape.org/
- https://www.gimp.org/ or https://github.com/Diolinux/PhotoGIMP
- https://www.scribus.net/
- https://synfig.org/
- https://www.openshot.org/
- https://shotcut.org/
