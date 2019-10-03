#!/bin/bash
echo "inicializando";
caminho=`pwd`;
echo "suas variaveis são: $1, $2";
echo `ffmpeg -i $caminho/$1 -s 1024x768 $caminho/$2.mp4`;
echo "finalizando script!";

