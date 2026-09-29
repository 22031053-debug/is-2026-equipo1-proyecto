# Paradigma de Trabajo del Proyecto

## 1. Métodos

### Modelo de desarrollo
Se utilizará un enfoque incremental, dividiendo el desarrollo en actividades pequeñas que puedan ser implementadas, revisadas y mejoradas de forma progresiva.

### Técnicas de análisis
Se utilizarán técnicas de identificación y análisis de requerimientos, revisión de necesidades del sistema y organización de las actividades mediante un tablero Kanban.

### Técnicas de validación
Se realizarán revisiones de código mediante Pull Requests, análisis estático con herramientas de calidad y verificación de los cambios antes de integrarlos a la rama principal.

## 2. Herramientas

### Visual Studio Code
Se utilizará como entorno de desarrollo para crear, editar y revisar los archivos del proyecto.

### Git y GitHub
Git se utilizará para el control de versiones y GitHub para alojar el repositorio, administrar ramas, Pull Requests y revisiones.

### Flake8
Se utilizará para realizar análisis estático del código Python y detectar problemas relacionados con el estilo y la calidad del código.

### GitHub Projects / Kanban
Se utilizará para organizar las tareas y visualizar el estado del trabajo mediante las columnas Backlog, En Proceso, En Revisión y Hecho.

## 3. Procedimientos

### Convención de commits
Los mensajes de commit deberán describir claramente el cambio realizado. Se utilizará una estructura basada en prefijos como:

- `feat:` para nuevas funcionalidades.
- `fix:` para correcciones.
- `docs:` para documentación.
- `refactor:` para modificaciones estructurales del código.
- `test:` para pruebas.

### Estrategia de ramas
La rama `main` se utilizará como rama principal del proyecto. Los cambios se desarrollarán en ramas independientes utilizando el formato:

`feature/nombre-del-cambio`

Los cambios deberán integrarse a `main` mediante Pull Requests.

### Política de Pull Requests y revisión
Todo cambio importante deberá enviarse mediante un Pull Request. Antes de realizar el Merge se deberá revisar el contenido, verificar que no existan conflictos y comprobar que se cumplan los estándares de calidad establecidos para el proyecto.