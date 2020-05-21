#!/bin/bash

cd "${0%/*}"
. ../common.sh

echo "Processing Underlords..."

ProcessDepot ".so"
ProcessVPK
ProcessToolAssetInfo

while IFS= read -r -d '' file
do
	baseFile="${file%.*}.txt"
	
	echo "> VPK $baseFile"
	
	../.support/vpktool "$file" > "$baseFile"
done <   <(find "game/dac/maps/" -type f -name "*.vpk" -print0)

FixUCS2

CreateCommit "$(grep "^ClientVersion=" game/dac/steam.inf | grep -o '[0-9\.]*')" "$1"
