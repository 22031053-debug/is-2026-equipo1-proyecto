# CASO DE ESTUDIO: Sistema de Gestión de Ventas e Inventario (SGVI)

## 1. Definición del Problema Real

Las pequeñas empresas que comercializan productos necesitan llevar un control constante de sus ventas y existencias. Cuando estos procesos se realizan de forma manual o mediante registros separados, pueden presentarse errores en el registro de productos, dificultades para conocer el inventario disponible y problemas para consultar el historial de ventas.

Además, la falta de información centralizada dificulta identificar los productos con bajo inventario y conocer cuáles tienen mayor demanda. Esto puede provocar retrasos en la reposición de productos y afectar el seguimiento de las operaciones comerciales.

## 2. Objetivos del Sistema

- **Objetivo General:** Desarrollar un sistema de gestión de ventas e inventario que permita centralizar el registro de productos, clientes, ventas y movimientos de inventario.

- **Objetivos Específicos:**
  1. Registrar y administrar la información de productos, clientes, ventas y movimientos de inventario.
  2. Procesar la información de ventas e inventario para identificar productos con mayor demanda y productos con bajo stock.
  3. Proporcionar una interfaz de usuario para realizar operaciones y consultar información mediante reportes básicos.

## 3. Actores del Sistema (Usuarios)

| Actor | Rol y Responsabilidad | Perfil Técnico | Access Level |
|---|---|---|---|
| Administrador | Gestión de usuarios, productos, categorías e inventario | Técnico alto | Full |
| Empleado | Registro de ventas, consulta de productos y clientes | Medio | Read/Write |
| Cliente | Consulta de información relacionada con sus operaciones | Básico | Read Only |

## 4. Alcance y Límites del Proyecto

- **Incluye:**
  - Registro e inicio de sesión de usuarios.
  - Administración de productos y categorías.
  - Registro y consulta de clientes.
  - Registro de ventas.
  - Control de entradas y salidas de inventario.
  - Consulta de existencias.
  - Identificación de productos con bajo inventario.
  - Consulta de ventas y productos más vendidos.
  - Generación de reportes básicos.

- **No Incluye:**
  - Procesamiento de pagos en línea.
  - Integración con bancos o sistemas financieros externos.
  - Desarrollo de una aplicación móvil.
  - Integración con servicios externos de facturación.
  - Implementación de inteligencia artificial avanzada.