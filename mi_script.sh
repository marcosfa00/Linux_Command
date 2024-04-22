
#!/bin/bash

# Preguntar al usuario
echo "¿Estás disfrutando de este ejercicio? ( responde sí o no)"
read respuesta

# almaceno la respuesta del usuario en una variable y la convierto a minusculas

respuesta_minusculas=$(echo "$respuesta" | tr '[:upper:]' '[:lower:]')
echo $respuesta_minusculas
# ahora trabajaremso con la respuesta del usuario

if [ "$respuesta_minusculas" == "si" ]; then
        echo "ME ALEGRO DE QUE ESTES DISFRUTANDO DE ESTE EJERCICIO"
elif [ "$respuesta_minusculas" == "no" ]; then
        echo "LAMENTO QUE NO TE GUSTE"
else
        echo "TU RESPUESTA DEBE SER SI O NO "
fi