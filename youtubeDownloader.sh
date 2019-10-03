#!/bin/bash
#recebe endereço
caminho=`pwd`;
if [ "$1" == "" ]
then
echo "Copie e cole aqui o link do video no you tube";read link;
else
link=$1;
fi
#recebe no do arquivo de saida
if [ "$2" == "" ]
then
echo "qual o nome do arquivo de saida?";read saida;
else
saida=$2;
fi
#verifica se é uma lista
if  [ "$3" == "" ]
then
#executa conversão e download
echo "Iniciando conversão e download!";
echo `youtube-dl  -o $caminho/$saida.mp4 $link`;
else
#executa conversão e download
echo "Iniciando conversão e download!";
echo `youtube-dl  -cit  $link`;
fi
echo "finalizado !";
