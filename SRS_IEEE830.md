# Especificación de Requisitos de Software (SRS) - IEEE Std 830-1998

**Proyecto:** Sistema de Gestión de Ventas e Inventario (SGVI) | **Versión:** 1.1-draft  
**Fecha:** 19 de octubre de 2026 (revisión de estructura y alcance: noviembre de 2026)  
**Responsable:** Cristian Maldonado

## 1. Introducción

### 1.1 Propósito

El propósito de este documento es definir los requisitos de software del Sistema de Gestión de Ventas e Inventario (SGVI). Servirá como referencia para establecer el alcance del sistema, identificar sus funciones principales y orientar las etapas posteriores de diseño, desarrollo y pruebas.

Está dirigido al responsable del desarrollo del proyecto, al docente evaluador de la asignatura y a los usuarios del negocio que validarán las funciones del sistema.

La sección 1 presenta el propósito, el alcance y la terminología de la especificación. La sección 2 describe el contexto general del sistema, sus funciones, los usuarios, y las suposiciones y dependencias. Los requisitos funcionales y no funcionales detallados se especificarán en secciones posteriores conforme se definan y validen.

### 1.2 Alcance del Sistema

El SGVI tiene como objetivo apoyar la administración de productos, clientes, ventas e inventario mediante un sistema centralizado. Se busca facilitar el registro y consulta de información, mantener un control de las existencias y generar reportes que apoyen la toma de decisiones.

**El sistema SÍ hará:**

- Permitir el inicio de sesión de los usuarios y controlar el acceso según su rol.
- Registrar, consultar y mantener productos y sus categorías.
- Registrar y consultar clientes.
- Registrar ventas, calcular su total y descontar las existencias correspondientes.
- Registrar entradas y salidas de inventario y consultar las existencias.
- Identificar productos con bajo inventario y productos con mayor demanda.
- Generar reportes básicos de ventas, productos e inventario.

**El sistema NO hará (exclusiones del alcance inicial):**

- Procesamiento de pagos en línea.
- Integración con bancos o sistemas financieros externos.
- Integración con plataformas externas de comercio electrónico.
- Facturación electrónica ni integración con servicios externos de facturación.
- Administración de múltiples sucursales.
- Aplicación móvil.
- Funciones de inteligencia artificial avanzada.

Estas funciones podrán evaluarse como ampliaciones futuras.

### 1.3 Definiciones, Acrónimos y Abreviaturas

| Término | Definición |
|---|---|
| SGVI | Sistema de Gestión de Ventas e Inventario. |
| SRS | Software Requirements Specification o Especificación de Requisitos de Software. |
| IEEE 830 | Estándar IEEE Std 830-1998 que describe una estructura para especificar requisitos de software. |
| Requisito funcional | Función o servicio que debe proporcionar el sistema. |
| Requisito no funcional | Condición de calidad o restricción que debe cumplir el sistema. |
| Inventario | Registro de productos y sus existencias disponibles. |
| Rol | Conjunto de permisos asignados a un tipo de usuario (Administrador, Empleado o Cliente). |
| HU | Historia de usuario. |
| Flask | Framework web para Python utilizado en la implementación. |
| MySQL | Sistema gestor de bases de datos relacionales utilizado por el sistema. |

**Referencias:** IEEE Std 830-1998, *IEEE Recommended Practice for Software Requirements Specifications*; `docs/CASO_ESTUDIO.md`; `HISTORIAS_USUARIO.md`; `PARADIGMA.md`; `CALIDAD.md`; `FACTIBILIDAD.md`; `CRONOGRAMA.md`.

## 2. Descripción General

### 2.1 Perspectiva del Producto

El SGVI es un producto independiente, no forma parte de un sistema mayor. Es una aplicación web orientada a centralizar las operaciones básicas de ventas e inventario de un negocio.

Se implementará con Python y el framework Flask, una interfaz web con HTML, CSS y JavaScript, y una base de datos MySQL. El repositorio de GitHub se utiliza para el control de versiones y la documentación del desarrollo. El sistema deberá mantener consistencia entre los productos registrados, las ventas realizadas y las existencias disponibles.

Restricciones del desarrollo:

- El desarrollo y la documentación se gestionan mediante Git y GitHub.
- Se siguen las convenciones de código y los criterios establecidos en `CALIDAD.md`.
- No se almacenan contraseñas, tokens ni credenciales en el repositorio.
- El desarrollo se realiza individualmente, por lo que la planificación considera el tiempo y la capacidad de una sola persona.

### 2.2 Funciones del Producto (Resumen Ejecutivo)

Las funciones principales, en orden de prioridad, son:

1. **Autenticación y control de acceso (Alta):** iniciar sesión y restringir las funciones según el rol del usuario.
2. **Gestión de productos (Alta):** registrar, consultar y mantener la información de productos y categorías.
3. **Gestión de ventas (Alta):** registrar operaciones de venta y asociarlas con los productos correspondientes.
4. **Control de inventario (Alta):** registrar entradas y salidas, consultar existencias y reflejar los cambios derivados de las ventas.
5. **Gestión de clientes (Media):** registrar y consultar la información de los clientes.
6. **Reportes (Media):** consultar ventas, productos más vendidos y productos con bajo inventario.

Las prioridades corresponden a las historias de usuario HU-01 a HU-06. Sus reglas de negocio y criterios de aceptación se detallan en `HISTORIAS_USUARIO.md`.

### 2.3 Características de los Usuarios

| Usuario | Responsabilidades | Nivel técnico | Permisos |
|---|---|---|---|
| Administrador | Gestión de usuarios, productos, categorías e inventario; consulta de reportes | Técnico alto | Acceso completo |
| Empleado | Registro de ventas, consulta de productos y registro de clientes | Medio | Lectura y escritura |
| Cliente | Consulta de información relacionada con sus operaciones | Básico | Solo lectura |

Se espera que los usuarios tengan conocimientos básicos de informática. La interfaz deberá utilizar etiquetas claras, formularios comprensibles y mensajes que permitan identificar errores de captura.

### 2.4 Suposiciones y Dependencias

- Se dispone de una computadora y conexión a internet para las actividades de desarrollo.
- GitHub estará disponible para alojar el repositorio y registrar los cambios.
- El entorno de ejecución contará con Python, Flask y un servidor MySQL disponibles.
- Los requisitos podrán ajustarse durante el análisis y diseño si se identifican necesidades adicionales.
- La implementación del control de inventario dependerá de definir las reglas para actualizar las existencias al registrar o modificar una venta.
- Los requisitos de seguridad, respaldo y recuperación deberán concretarse antes de establecer la solución técnica definitiva.
