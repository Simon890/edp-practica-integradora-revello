#!/bin/bash
NUMEROS=()

echo "INGRESE UNA SERIE DE NUMEROS ENTEROS"
echo "PARA SALIR Y OBTENER EL RESULTADO INGRESE exit"

while read NUMERO
do

  if [[ $NUMERO =~ ^[eE][xX][iI][tT] ]]
  then
    ORDENADO=$(echo ${NUMEROS[@]} | tr ' ' '\n' | sort -n) #-n hace un ordenamiento numerico
    echo $ORDENADO > "salida-c.txt"
    echo "Resultado guardado en: salida-c.txt"
    exit 0
  fi

  if [[ $NUMERO =~ [0-9]{1,} ]]
  then
    NUMEROS+=($NUMERO)
  else
    echo "Debe ingresar un numero entero"
  fi
  echo ${NUMEROS[@]}
done
