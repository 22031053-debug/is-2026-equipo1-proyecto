# Especificación de Requisitos de Software (SRS)
## Sistema de Gestión de Ventas e Inventario (SGVI)

**Versión:** 1.0  
**Fecha:** 19 de octubre de 2026  
**Responsable:** Cristian Maldonado

# 1. Introducción

## 1.1 Propósito

El propósito de este documento es definir los requisitos de software del Sistema de Gestión de Ventas e Inventario (SGVI). Servirá como referencia para establecer el alcance del sistema, identificar sus funciones principales y orientar las etapas posteriores de diseño, desarrollo y pruebas.

## 1.2 Alcance

El SGVI tiene como objetivo apoyar la administración de productos, clientes, ventas e inventario mediante un sistema centralizado. Se busca facilitar el registro y consulta de información, mantener un control de las existencias y generar reportes que apoyen la toma de decisiones.

El sistema contempla las siguientes funciones principales:

- Registrar y consultar productos.
- Registrar y consultar clientes.
- Registrar ventas.
- Consultar y controlar las existencias del inventario.
- Consultar reportes relacionados con las operaciones registradas.

El sistema no contempla, dentro del alcance inicial, la integración con plataformas externas de comercio electrónico, la facturación electrónica ni la administración de sucursales múltiples. Estas funciones podrán evaluarse como ampliaciones futuras.

## 1.3 Definiciones, acrónimos y abreviaturas

| Término | Definición |
|---|---|
| SGVI | Sistema de Gestión de Ventas e Inventario. |
| SRS | Software Requirements Specification o Especificación de Requisitos de Software. |
| IEEE 830 | Estándar histórico que describe una estructura para especificar requisitos de software. |
| Requisito funcional | Función o servicio que debe proporcionar el sistema. |
| Requisito no funcional | Condición de calidad o restricción que debe cumplir el sistema. |
| Inventario | Registro de productos y sus existencias disponibles. |

## 1.4 Referencias

- IEEE Std 830-1998. *IEEE Recommended Practice for Software Requirements Specifications*.
- `PARADIGMA.md`, documento de referencia del paradigma y las prácticas de desarrollo del proyecto.
- `CALIDAD.md`, documento de referencia de los criterios de calidad y convenciones del proyecto.
- `FACTIBILIDAD.md`, estudio de factibilidad del SGVI.
- `CRONOGRAMA.md`, planificación de actividades del SGVI.

## 1.5 Visión general del documento

La sección 1 presenta el propósito, alcance y terminología de la especificación. La sección 2 describe el contexto general del sistema, los usuarios, las restricciones y las dependencias. Los requisitos funcionales y no funcionales detallados podrán especificarse en apartados posteriores conforme se definan y validen.

# 2. Descripción general

## 2.1 Perspectiva del producto

El SGVI es un sistema de software orientado a centralizar las operaciones básicas de ventas e inventario. Se desarrollará como un proyecto independiente y utilizará el repositorio GitHub para el control de versiones y la documentación del desarrollo.

La tecnología de implementación y la arquitectura definitiva aún deben confirmarse durante el diseño técnico. El sistema deberá mantener consistencia entre los productos registrados, las ventas realizadas y las existencias disponibles.

## 2.2 Funciones del producto

Las funciones principales previstas son:

1. **Gestión de productos:** registrar, consultar y mantener la información de los productos.
2. **Gestión de clientes:** registrar y consultar la información de los clientes.
3. **Gestión de ventas:** registrar operaciones de venta y asociarlas con los productos correspondientes.
4. **Control de inventario:** consultar existencias y reflejar los cambios derivados de las ventas.
5. **Reportes:** consultar información resumida de productos, ventas e inventario.

Estas funciones describen el alcance previsto; sus reglas de negocio y criterios de aceptación deberán detallarse antes de la implementación.

## 2.3 Características de los usuarios

El sistema está dirigido a personas que administran productos, registran ventas y consultan existencias o reportes.

Se espera que los usuarios tengan conocimientos básicos de informática. La interfaz deberá utilizar etiquetas claras, formularios comprensibles y mensajes que permitan identificar errores de captura.

## 2.4 Restricciones

- El desarrollo y la documentación se gestionarán mediante Git y GitHub.
- Se deberán seguir las convenciones de código y los criterios establecidos en `CALIDAD.md`.
- No se deberán almacenar contraseñas, tokens ni credenciales en el repositorio.
- Las tecnologías de implementación deberán confirmarse antes de establecer requisitos técnicos específicos.
- El desarrollo se realiza individualmente, por lo que la planificación deberá considerar el tiempo y la capacidad de una sola persona.

## 2.5 Suposiciones y dependencias

- Se dispone de una computadora y conexión a internet para las actividades de desarrollo.
- GitHub estará disponible para alojar el repositorio y registrar los cambios.
- Los requisitos podrán ajustarse durante el análisis y diseño si se identifican necesidades adicionales.
- La implementación del control de inventario dependerá de definir las reglas para actualizar las existencias al registrar o modificar una venta.
- Los requisitos de seguridad, respaldo y recuperación deberán concretarse antes de establecer la solución técnica definitiva.