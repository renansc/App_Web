#!/bin/bash

caminho=`pwd`;
video=$1;
audio=$2;
echo "video $video e audio $audio seu caminho atual $caminho";
if [ "$1" == "" ]
then
echo "qual nome do video a ser convertido";read video;
else
video=$1;
fi
if [ "$2" == "" ]
then
echo "qual nome do arquivo mp3 de saida";read audio;
else
audio=$2;
fi
echo "Iniciando conversão";
`exec 'ffmpeg' -i "$caminho/$video" -b:a 16M -acodec libmp3lame "$caminho/$audio.mp3"`;
echo "Finalizado.";
