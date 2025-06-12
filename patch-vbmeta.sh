#!/bin/bash

if [ -f vbmeta.img.lz4 ]; then
	lz4 -B6 --content-size -f vbmeta.img.lz4 vbmeta.img
fi

./vbmeta-disable-verification vbmeta.img
rm -rf vbmeta.img.lz4
