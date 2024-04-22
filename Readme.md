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


