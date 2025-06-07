#!/bin/bash

if [ -f vbmeta.img.lz4 ]; then
	lz4 -d vbmeta.img.lz4
fi

./vbmeta-disable-verification vbmeta.img
tar cvf vbmeta-disabled.tar vbmeta.img
md5sum -t vbmeta-disabled.tar >> vbmeta-disabled.tar
mv vbmeta-disabled.tar vbmeta-disabled.tar.md5