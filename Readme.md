**File and Directory Management Commands**


### Comandos Básicos

1. **mkdir** - Crea un nuevo directorio.

   ```bash
   mkdir carpeta_nueva
   ```

2. **rm** - Elimina archivos o directorios.

   ```bash
   rm archivo.txt
   rm -r carpeta
   ```

3. **touch** - Crea un nuevo archivo vacío o actualiza la fecha de modificación de un archivo existente.

   ```bash
   touch nuevo_archivo.txt
   ```

4. **cp** - Copia archivos y directorios.

   ```bash
   cp archivo.txt carpeta_destino/
   cp -r directorio_origen/ directorio_destino/
   ```

5. **mv** - Mueve o renombra archivos y directorios.

   ```bash
   mv archivo.txt nuevo_nombre.txt
   mv archivo.txt carpeta_destino/
   ```

6. **ls** - Lista el contenido de un directorio.

   ```bash
   ls
   ls -l
   ```

7. **chmod** - Cambia los permisos de archivos y directorios.

   ```bash
   chmod +x script.sh
   ```


**Introducción a las Variables de Shell**


### ¿Qué es una variable de shell?

Las variables de shell son una manera poderosa de almacenar y acceder o modificar información, como números, cadenas de caracteres y otras estructuras de datos, mediante un nombre. Veamos algunos ejemplos básicos para entender mejor este concepto.

Consideremos el siguiente ejemplo:

```bash
$ firstname=Jeff
$ echo $firstname
Jeff
```

La primera línea asigna el valor Jeff a una nueva variable llamada firstname. La siguiente línea accede y muestra el valor de la variable, utilizando el comando echo junto con el carácter especial $ delante del nombre de la variable para extraer su valor, que es la cadena Jeff.

Por lo tanto, hemos creado una nueva variable de shell llamada firstname cuyo valor es Jeff.

Esta es la forma más básica de crear una variable de shell y asignarle un valor en un solo paso.

### Lectura de la entrada del usuario en una variable de shell en la línea de comandos

Aquí hay otra forma de crear una variable de shell, utilizando el comando read.

Después de ingresar

```bash
$ read lastname
```

en la línea de comandos, el shell espera a que ingreses algún texto:

```bash
$ read lastname  
Grossman  
$ 
```

Ahora podemos ver que el valor Grossman acaba de ser almacenado en la variable lastname por el comando read:

```bash
$ read lastname  
Grossman  
$ echo $lastname  
Grossman  
```

Por cierto, observa que puedes imprimir los valores de múltiples variables a la vez:

```bash
$ echo $firstname $lastname  
Jeff Grossman  
```

Como verás pronto, el comando read es particularmente útil en la creación de scripts de shell. Puedes usarlo dentro de un script de shell para solicitar a los usuarios que ingresen información, la cual luego se almacena en una variable de shell y está disponible para su uso por el script de shell mientras se ejecuta. También aprenderás sobre los argumentos de línea de comandos, que son valores que se pueden pasar a un script y asignados automáticamente a variables de shell.

### Resumen

En esta lectura, aprendiste que:

- Las variables de shell almacenan valores y permiten a los usuarios acceder a ellos posteriormente por nombre.
- Puedes crear variables de shell declarando una variable de shell y un valor o utilizando el comando read.


# Programación de tareas utilizando Cron

¡Bienvenido a la programación de tareas utilizando Cron! Después de ver este video, podrás:

- Programar tareas con Cron mediante crontab.
- Describir la sintaxis de Cron.
- Aplicar y eliminar tareas programadas con Cron.

Ya seas un administrador de sistemas, un ingeniero de datos o incluso un desarrollador, puede haber momentos en los que desees programar ciertas tareas para que se ejecuten automáticamente en momentos específicos. Por ejemplo, puedes querer programar un script de carga para que se ejecute todos los días a medianoche y un script de respaldo para que se ejecute todos los domingos a las 2 AM. La utilidad cron en sistemas operativos Linux y similares a Unix te permite hacer exactamente eso.

**Cron** es el nombre general de la herramienta que ejecuta tareas programadas que consisten en comandos de shell o scripts de shell. **Crond** es el daemon o servicio que interpreta los "archivos crontab" cada minuto y envía las tareas correspondientes a Cron en los horarios programados. Un **crontab**, abreviatura de "tabla cron", es un archivo que contiene tareas y datos de programación. Crontab también es un comando que invoca un editor de texto para permitirte editar un archivo crontab. Al ingresar `crontab -e` en la línea de comandos, se abrirá el editor de texto predeterminado. Utilizando el editor, puedes especificar una nueva programación y un comando, que tiene la siguiente sintaxis: "comando" puede ser cualquier comando de shell, incluida una llamada a un script de shell. Los símbolos representan minuto, hora, día del mes, mes y día de la semana. Las cinco posiciones deben tener una entrada numérica o un asterisco, que es un símbolo comodín que significa "cualquier cosa". Por ejemplo, la siguiente sintaxis significa: agregar la fecha actual al archivo 'domingos.txt' a las 15:30 todos los domingos. Al cerrar el editor y guardar los cambios, se agrega la tarea a la tabla cron.

Ahora, veamos más de cerca cada uno de estos pasos:

1. Al ingresar `crontab -e` en la línea de comandos, se abrirá el editor de texto predeterminado. En este caso, el editor predeterminado es GNU nano. Convenientemente, las instrucciones para configurar tareas programadas están incluidas aquí como comentarios. También se incluyen instrucciones para usar el editor, pero probablemente solo necesitarás "control x" en este contexto.
2. Aquí he ingresado tres ejemplos de tareas cron. Observa que los espacios adicionales se ignoran, por lo que para mejorar la legibilidad, puedes alinear tus entradas como columnas bajo el encabezado.
3. La primera entrada instruye a cron que agregue la fecha actual al archivo 'domingos.txt' a las 15:30 todos los domingos. La siguiente línea especifica un script de shell "cargar datos" que se ejecutará a medianoche todos los días, mientras que la última línea hace que cron ejecute el script de shell "respaldo" a las 2 AM los domingos. Para guardar la tarea, primero escribe "control x" para salir del editor y luego ingresa "y" para guardar los cambios. ¡Las tareas están ahora en producción!
4. Ejecutar `crontab -l` devuelve una lista de todas las tareas cron y sus programaciones. He utilizado `tail` para evitar devolver todos los comentarios del archivo crontab.
5. Para eliminar una tarea, simplemente invoca el editor de crontab, elimina la línea correspondiente en el archivo crontab y guarda los cambios.

En este video, aprendiste que:

- Las tareas cron pueden programarse para ejecutarse periódicamente en momentos seleccionados.
- Cron, Crond y Crontab tienen funciones diferentes.
- Al ingresar `crontab -e` en la línea de comandos se abre el editor de texto predeterminado.
- Ejecutar `crontab -l` devuelve una lista de todas las tareas cron y sus programaciones.


