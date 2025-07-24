#!/bin/bash
#dosya bilgisi vermezsem bulunduğum dizinde çalıştırmasını istediğim için if kullandım
if [ ${file[@]} -eq 0 ]; then
file=$pwd 

else 

file=$1
fi 
echo "Verilen dizinin boyutu"
du -sh  $file
echo "Verilen dizindeki dosya sayısı"
du -ah $file | sort -nr | head -1
echo "Verilen dizindeki en yüksek boyutlu dosya ve boyutu"
du -ah $file | sort -r | head -1
echo "Verilen dizindeki en düşük boyutlu dosya ve boyutu" 
ls $file | wc -l
echo "Verilen dizindeki klasör sayısı"
find $file -maxdepth 1 -type d | wc -l
echo "Verilen dizinin sahibi"
ls -l 
echo "Verilen dizindeki dosyaların uzantı listesi"
find $file -type f | sed 's/^\.\///g' | sort
