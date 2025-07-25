#!/bin/bash
#dosya bilgisi vermezsem bulunduğum dizinde çalıştırmasını istediğim için if kullandım
if [ $# -eq 0 ]; then
file=$(pwd)
else
file=$1
fi
echo "Verilen dizinin boyutu"
du -sh  $file
echo "Verilen dizindeki en yüksek boyutlu dosya ve boyutu"
du -ah $file | sort -nr | head -2 | tail -1
echo "Verilen dizindeki en düşük boyutlu dosya ve boyutu"
du -ah $file | sort -r | tail -1
echo "Verilen dizindeki dosya sayısı" 
find $file -maxdepth 1 -type f | wc -l
echo "Verilen dizindeki klasör sayısı"
find $file -mindepth 1 -maxdepth 1 -type d | wc -l
echo "Verilen dizinin sahibi"
stat -c '%U' $file 
echo "Verilen dizindeki dosyaların uzantı listesi"
find $file -type f -name "*.*" | sed -n 's/.*\.//p' | sort | uniq
 

