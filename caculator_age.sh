#!/bin/bash
read -p "Please type your name:"  name
read -p "Please type your age:" age
if [ -z "${name}" ] ; then
	echo "Vui long nhap ten vao nha!"
	exit 1
fi
if [ -z ${age} ] ; then 
	echo "Vui long nhap tuoi vao nha !"
	exit 1
elif [ ${age} -lt 0 ] ; then 
	echo "Tuoi khong duoc nho hon 0"
	exit 1
fi
namhientai="2021"
AGE_60=$(expr ${namhientai} - ${age} + 60)
AGE_80=$(expr ${namhientai} - ${age} + 80)
AGE_100=$(expr ${namhientai} - ${age} + 100)
echo "So nam ban dat duoc 60 tuoi la: ${AGE_60} "
echo "So nam ban dat duoc 80 tuoi la: ${AGE_80} "
echo "So nam ban dat duoc 100 tuoi la: ${AGE_100} "
exit 0
