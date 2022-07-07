
#!/bin/bash
while read ADJETIVO
do
  #Se agrega la palabra clave "exit" para salir del programa
  echo $ADJETIVO | grep ^[eE][xX][iI][tT] && exit 0

  #Se ponen todas las letras en minúscula
  ADJETIVO=$(echo $ADJETIVO | tr [:upper:] [:lower:])

  if [[ $(echo $ADJETIVO | (grep ^p || grep ^b)) ]]
  then
  PREFIJO="Im"
  else
  PREFIJO="In"
  fi

  echo "$PREFIJO$ADJETIVO"
done
exit 0
