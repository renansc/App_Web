#!/bin/bash
echo "inicializando";
echo "suas variaveis são: $1, $2";
echo `ffmpeg -i $1 -s 1024x768 $2.mp4`;
echo "finalizando script!";

