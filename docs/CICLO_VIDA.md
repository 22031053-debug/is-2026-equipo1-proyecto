# ANÁLISIS DEL CICLO DE VIDA Y GESTIÓN DE RIESGOS

> Las fechas de este documento están alineadas con el diagrama de Gantt de `CRONOGRAMA.md` (Práctica 6). La matriz de riesgos se encuentra en `docs/RIESGOS.md`.

## 1. Mapeo de Fases Clásicas (Modelo en Cascada / Incremental)

### 1.1 Requerimientos y Análisis

**Periodo estimado:** 05/10/2026 - 03/11/2026

En esta fase se define el problema, los objetivos, los actores, el alcance y los requerimientos principales del Sistema de Gestión de Ventas e Inventario (SGVI).

**Entregables:**
- Caso de estudio (`docs/CASO_ESTUDIO.md`).
- Historias de usuario (`HISTORIAS_USUARIO.md`).
- Estudio de factibilidad (`FACTIBILIDAD.md`), del 14/10/2026 al 20/10/2026.
- Especificación de requisitos SRS IEEE 830 (`SRS_IEEE830.md`), del 21/10/2026 al 03/11/2026.

### 1.2 Diseño de Arquitectura y Base de Datos

**Periodo estimado:** 04/11/2026 - 24/11/2026

Se define la arquitectura general del sistema, los módulos principales y la estructura de la base de datos.

- Modelado UML de casos de uso y clases: del 04/11/2026 al 17/11/2026.
- Diseño de la base de datos: del 18/11/2026 al 24/11/2026.

**Módulos considerados:**
- Usuarios.
- Productos.
- Categorías.
- Clientes.
- Ventas.
- Inventario.

**Entregables:**
- Diagramas UML de casos de uso y clases.
- Diseño de arquitectura.
- Modelo de base de datos.
- Entidades y relaciones.

### 1.3 Implementación / Codificación

**Periodo estimado:** 18/11/2026 - 01/12/2026

Se desarrolla el sistema utilizando las tecnologías definidas para el proyecto. De acuerdo con el Gantt, esta fase inicia durante la semana del diseño de la base de datos.

**Tecnologías:**
- Python.
- Flask.
- HTML.
- CSS.
- JavaScript.
- MySQL.

La implementación se realizará de forma incremental, desarrollando y verificando los módulos progresivamente.

**Entregables:**
- Módulo de usuarios.
- Módulo de productos.
- Módulo de clientes.
- Módulo de ventas.
- Módulo de inventario.

### 1.4 Pruebas y Verificación

**Periodo estimado:** 02/12/2026 - 08/12/2026

Se realizan pruebas funcionales y de integración para verificar el correcto funcionamiento del sistema.

**Estrategia de pruebas:**
- Validación de datos.
- Pruebas unitarias.
- Pruebas funcionales.
- Pruebas de integración.
- Pruebas de operaciones de ventas.
- Pruebas de movimientos de inventario.

**Entregables:**
- Resultados de pruebas.
- Corrección de errores encontrados.
- Verificación de módulos integrados.

### 1.5 Despliegue, Mantenimiento y Evolución

**Periodo estimado:** despliegue y manuales técnicos del 09/12/2026 al 15/12/2026; mantenimiento a partir del 16/12/2026.

Se realizan el despliegue, la documentación técnica y, posteriormente, las correcciones, mejoras y actualizaciones.

**Estrategia:**
- Corrección de errores.
- Mejoras funcionales.
- Actualización de módulos.
- Revisión periódica del sistema.

## 2. Modelo de ciclo de vida utilizado

El proyecto combina una estructura por fases con entregas incrementales. Primero se establecen los requerimientos y el diseño general, posteriormente se implementan los módulos de forma progresiva.

Cada módulo será revisado y verificado antes de continuar con las siguientes funcionalidades.

## 3. Aplicación al proyecto

El sistema comenzará con los módulos de usuarios, productos, clientes, ventas e inventario. Cada incremento incorporará nuevas funcionalidades y permitirá verificar el funcionamiento de los módulos desarrollados.
