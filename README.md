# Oracle APEX imputador
Una capa gráfica en APEX para utilizar la API plsql de comunicación [plsql-j-imputador](https://github.com/jpromocion/plsql-j-imputador), y de esta forma realizar imputaciones contra el registro horario de la aplicación Fuifi de Laberit (u otra empresa donde se use).

Permitirá gestionar la configuración para el administrador.

Luego permite las opciones de consultar registros horarios realizados, y realizar registros horarios por dos sistemas: carga por conjunto de fechas y horas indicado, o carga para rango de fechas y dias modelo definidos.

## Requisitos

Es una aplicación en Oracle APEX (Versión 22.1.6). Preparado para utilizarse con el Cloud Free de Oracle.

En un esquema que tenga asociado el workspace donde se va a instalar la aplicación APEX, se debe haber pre-instalado los elementos del repositorio [plsql-j-imputador](https://github.com/jpromocion/plsql-j-imputador).

## Installation

Es una exportación de la aplicación APEX tal cual en "f135":
 * Version descromida de la exportacion por zip.
 * No lleva Supported Objects, dado que esos son los definidos en el proyecto [plsql-j-imputador](https://github.com/jpromocion/plsql-j-imputador), cuya instalación es pre-requesito.

Instalar en una nueva instancia simplemente:
 * Importar aplicación, asignandole el id que queremos.
 * Tiene el Access Control por defecto de Oracle APEX, por lo que tras la instalación deberás revisar los roles y los usuarios con acceso.


## Screenshots

### Consulta registros horarios

![Imagen consulta registros](https://raw.githubusercontent.com/jpromocion/apex-j-imputador/master/screenshots/consultar_horario.png)


### Registrar un horario

![Imagen registrar un horario](https://raw.githubusercontent.com/jpromocion/apex-j-imputador/master/screenshots/registrar_horario.png)
