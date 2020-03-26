#!/bin/bash
if [ "$1" == "" ]
then
echo "Qual a Musica?";
read musica;
`audacious -Hp $musica` & read proximo;
else
`audacious -Hp $1` & read proximo;
fi
if [ "$proximo" == "parar" ]
then
`audacious --stop`;
else
if [ "$proximo" == "trocar" ]
then
`audacious --stop` &  read proximo; `audacious -Hp $proximo`;
else
echo "comando desconhecido";
fi
fi
