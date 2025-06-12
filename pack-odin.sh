#!/bin/bash

for i in *.img; do
  lz4 -B6 --content-size --rm $i $i.lz4
done

tar cvf miniAP.tar *.lz4
md5sum -t miniAP.tar >> miniAP.tar
mv miniAP.tar miniAP.tar.md5
rm -rf *.lz4
