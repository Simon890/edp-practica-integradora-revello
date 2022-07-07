
#!/bin/bash
[ $# -lt 1 ] && echo "Debe ingresar el nombre del adjetivo" && exit 1

#Se ponen todas las letras en minúscula
ADJETIVO=$(echo $1 | tr [:upper:] [:lower:])

if [[ $(echo $ADJETIVO | (grep ^p || grep ^b)) ]]
then
PREFIJO="Im"
else
PREFIJO="In"
fi

echo "$PREFIJO$ADJETIVO"
exit 0
