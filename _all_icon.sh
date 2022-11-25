#!/usr/bin/env bash

echo "🦊 Test icon..."

FILE_PATH='';
FILE_NAME='';

# echo "project-path: $1";
# echo "project-name: $2";

if [ -z $1 ];
then
  	echo "❌ exit";
	exit
else
	# echo "projectname set to '$1'";
	# echo "projectname set to '$2'";
	FILE_PATH=$1;
	FILE_NAME=$2;
fi

echo "🧪 FILE_PATH: ${FILE_PATH}";
echo "🧪 FILE_NAME: ${FILE_NAME}";


# original icon file
INPUT=$FILE_PATH
# icon name
OUTPUT=export/$FILE_NAME/icon.iconset
OUTPUT2=export/$FILE_NAME/icons

# create icons folder
mkdir -p $OUTPUT
mkdir -p $OUTPUT2


echo "  → Generate all icons with sips"
# convert images to create the different sizes for the icon
sips -z 16 16     	$INPUT --out ${OUTPUT}/icon_16x16.png
sips -z 32 32     	$INPUT --out ${OUTPUT}/icon_16x16@2x.png
sips -z 32 32     	$INPUT --out ${OUTPUT}/icon_32x32.png
sips -z 64 64     	$INPUT --out ${OUTPUT}/icon_32x32@2x.png
sips -z 128 128   	$INPUT --out ${OUTPUT}/icon_128x128.png
sips -z 256 256   	$INPUT --out ${OUTPUT}/icon_128x128@2x.png
sips -z 256 256  	$INPUT --out ${OUTPUT}/icon_256x256.png
sips -z 512 512   	$INPUT --out ${OUTPUT}/icon_256x256@2x.png
sips -z 512 512  	$INPUT --out ${OUTPUT}/icon_512x512.png
sips -z 1024 1024	$INPUT --out ${OUTPUT}/icon_512x512@2x.png

echo "  → Create template images"
# create two "template" images...
sips -z 20 20     	$INPUT --out ${OUTPUT2}/IconTemplate.png
sips -z 40 40     	$INPUT --out ${OUTPUT2}/IconTemplate@2x.png
sips -z 20 20   	$INPUT --out ${OUTPUT2}/icon_20x20.png
sips -z 40 40   	$INPUT --out ${OUTPUT2}/icon_20x20@2x.png

echo "  → Create new icon"
# create icon.icns
iconutil -c icns $OUTPUT

echo "  → Move new icon to the correct folder"
# move icon to the correct folder
cp $OUTPUT/../icon.icns $OUTPUT2/Icon.icns
cp $OUTPUT/../icon.icns $OUTPUT2/$FILE_NAME.icns
cp $OUTPUT/../icon.icns $OUTPUT/../$FILE_NAME.icns
