# open-source-suite-icons

Collection of suite icons for Gimp, Inkscape, Synfig and Scribus

Focused on OSX.

|                            Gimp                            |                              Inkscape                              |                             Scribus                              |                             Synfig                             |
| :--------------------------------------------------------: | :----------------------------------------------------------------: | :--------------------------------------------------------------: | :------------------------------------------------------------: |
| ![Gimp](export/gimp/rounded/icon.iconset/icon_128x128.png) | ![Inkscape](export/inkscape/rounded/icon.iconset/icon_128x128.png) | ![Scribus](export/scribus/rounded/icon.iconset/icon_128x128.png) | ![Synfig](export/synfig/rounded/icon.iconset/icon_128x128.png) |

I used to have access to Adobe Suite. Most of my design work was done with Illustrator, Photoshop, Animate and (a little) Indesign. Now I want to replace that with opensource applications. And as an exersice I wanted to change the icons in a Adobe Suite kinda way.

## install applications

Easiest way to install Gimp, Inkscape and Scribus on OSX is via [brew](https://brew.sh/).

Make sure you have brew installed and copy/paste in you terminal:

```bash
# install
brew install --cask gimp # 👈 gimp: 2.10.32
brew install --cask inkscape # 👈 inkscape: 1.2.1
brew install --cask scribus # 👈 scribus: 1.5.8
brew install --cask synfigstudio # 👈 synfig: 1.5.1
```

> I added the version that will be installed (at the moment of writing). Those versions will change outside my controle but might explain why this document isn't up-to-date or doesn't work anymore (in the future)

## Create new icons

I have created a Inkscape file with the icons: [icons.svg](design/icons.svg).

If you want to add or modify, you need to install [Bebas Neue](https://fonts.google.com/specimen/Bebas+Neue) font or replace it with you own.

Create the icons with a [bash](all.sh) script:

```bash
sh all.sh
```

## Path to applications

installed on osx

- Gimp: `/Applications/GIMP-2.10.app/Contents/Resources/gimp.icns`
- Inkscape: `/Applications/Inkscape.app/Contents/Resources/inkscape.icns`
- Scribus: `/Applications/Scribus.app/Contents/Resources/Scribus.icns`

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
