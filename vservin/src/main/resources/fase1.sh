#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#Script para la fase 1 del DatioEngineers Test
#Por: Valeria Servin

echo
echo "DatioEngineers Test"
echo
#Ejercicio 1. Descarga del archivo
echo "Descargando el archivo dentro del directorio en el que te encuentras"
echo 

wget -O ./file.csv "http://samplecsvs.s3.amazonaws.com/Sacramentorealestatetransactions.csv"

echo "Codificandolo para linux ...."
tr  '\r' '\n' <file.csv> file2.csv
echo "El archivo ahora se llama file2.csv"
echo

#echo "Este es el contenido del archivo:"
#cat file2.csv
#echo
#echo

#Ejercicio 2. Lineas del archivo
echo "Numero de lineas del archivo:"
wc file2.csv|cut -c-6

echo
echo

#Ejercicio 3. Imprimir las primeras 10 y las ultimas 10 del archivo
echo "Primeras 10 lineas del archivo:"
head -10 file2.csv
echo
echo "Ahora las ultimas 10:"
tail -10 file2.csv

echo
echo

#Ejercicio 4. Filtrado por la palabra Multi-Family
echo "Filtrado por la palabra Multi-Family"
grep Multi-Family file2.csv

exit


