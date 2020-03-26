#!/bin/bash
#recebe lista de videos
videos=(`ls`);
#pega quantidade de arquivos
tamanho=${#videos[@]};
#imprime na tela
for indice in $( seq 0 $tamanho ); do
	echo ${videos[$indice]};
done
tamanho=$(($tamanho -1));
#executa laço iterativo
for indice in $( seq 0 $tamanho ); do
	video=${videos[$indice]};
	audio=`echo ${video:0:${#video}-1}3`;
	echo $video;
	`exec 'ffmpeg' -i $video -b:a 16M -acodec libmp3lame $indice.mp3`;
done
