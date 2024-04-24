```markdown
# Script de Respaldo

Este script en Bash automatiza el proceso de crear respaldos de archivos modificados en las últimas 24 horas en un directorio especificado y los mueve a otro directorio para su almacenamiento seguro.

---

## Uso

```bash
./backup.sh nombre_directorio_origen nombre_directorio_destino
```

Reemplace `nombre_directorio_origen` con el directorio que desea respaldar y `nombre_directorio_destino` con el directorio donde desea almacenar el respaldo.

---

## Requisitos Previos

- Entorno de shell Bash
- Dos rutas de directorio válidas como argumentos

---

## Características

- **Verificación de Argumentos**: Valida si se proporciona el número correcto de argumentos.
- **Validación de Directorios**: Asegura que las rutas proporcionadas sean directorios válidos.
- **Manejo de Tiempos**: Recupera y gestiona marcas de tiempo para fines de respaldo.
- **Creación de Respaldos**: Genera un archivo tar comprimido de los archivos seleccionados.
- **Selección de Archivos**: Determina los archivos modificados en las últimas 24 horas para respaldo.
- **Movimiento de Archivos**: Mueve el archivo de respaldo creado al directorio de destino.

---

## Cómo Funciona

1. **Verificación de Argumentos**: Si se proporcionan argumentos incorrectos, muestra un mensaje de error y sale.

2. **Validación de Directorios**: Asegura que ambas rutas proporcionadas sean directorios válidos; de lo contrario, muestra un mensaje de error y sale.

3. **Asignación de Variables**: Asigna las rutas de directorio proporcionadas a variables para su posterior procesamiento.

4. **Impresión de Rutas de Directorio**: Imprime las rutas de directorio de origen y destino proporcionadas para confirmación.

5. **Obtención de la Marca de Tiempo Actual**: Recupera la marca de tiempo actual en segundos para usarla en el nombre del archivo de respaldo.

6. **Generación del Nombre del Archivo de Respaldo**: Crea un nombre de archivo de respaldo usando la marca de tiempo actual para garantizar su unicidad.

7. **Configuración de Variables**: Define variables para las rutas de directorio de origen y destino para facilitar la navegación.

8. **Navegación al Directorio de Origen**: Cambia al directorio de origen para las operaciones de archivo.

9. **Cálculo de la Marca de Tiempo de Ayer**: Calcula la marca de tiempo de hace 24 horas para comparación de modificación de archivos.

10. **Bucle a través de los Archivos**: Itera a través de cada archivo en el directorio de origen para determinar su elegibilidad para respaldo.

11. **Verificación del Tiempo de Modificación del Archivo**: Compara el tiempo de modificación del archivo con la marca de tiempo de ayer para seleccionar archivos para respaldo.

12. **Creación del Archivo de Respaldo**: Comprime los archivos seleccionados en un archivo tar para un almacenamiento eficiente.

13. **Movimiento del Archivo de Respaldo**: Mueve el archivo de respaldo creado al directorio de destino para su almacenamiento seguro.

