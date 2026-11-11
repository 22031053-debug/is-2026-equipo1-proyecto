-- =====================================================================
-- Script DDL de creación del esquema relacional del SGVI
-- Sistema de Gestión de Ventas e Inventario
-- Motor: MySQL 8.0.16 o superior (requerido para las restricciones CHECK)
-- Responsable: Cristian Maldonado | Fecha: 2026-11-08
-- =====================================================================

CREATE DATABASE IF NOT EXISTS sgvi
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE sgvi;

-- Usuarios del sistema y su rol (RF-01, RF-02)
CREATE TABLE usuarios (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(100) NOT NULL,
    email          VARCHAR(150) NOT NULL UNIQUE,
    password_hash  VARCHAR(255) NOT NULL,
    rol            ENUM('administrador', 'empleado', 'cliente') NOT NULL DEFAULT 'empleado',
    activo         BOOLEAN NOT NULL DEFAULT TRUE,
    creado_en      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

-- Categorías de productos
CREATE TABLE categorias (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    nombre       VARCHAR(80) NOT NULL UNIQUE,
    descripcion  VARCHAR(255)
) ENGINE = InnoDB;

-- Catálogo de productos (RF-03)
CREATE TABLE productos (
    id                 INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id       INT NULL,
    nombre             VARCHAR(150) NOT NULL,
    precio             DECIMAL(10, 2) NOT NULL,
    existencias        INT NOT NULL DEFAULT 0,
    existencia_minima  INT NOT NULL DEFAULT 5,
    creado_en          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_productos_precio CHECK (precio > 0),
    CONSTRAINT chk_productos_existencias CHECK (existencias >= 0),
    CONSTRAINT chk_productos_minima CHECK (existencia_minima >= 0),
    CONSTRAINT fk_productos_categoria FOREIGN KEY (categoria_id)
        REFERENCES categorias (id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB;

-- Clientes del negocio (RF-04)
CREATE TABLE clientes (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    nombre     VARCHAR(120) NOT NULL,
    telefono   VARCHAR(20),
    email      VARCHAR(150) UNIQUE,
    creado_en  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

-- Encabezado de la venta (RF-05)
CREATE TABLE ventas (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id  INT NOT NULL,
    cliente_id  INT NULL,
    fecha       DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total       DECIMAL(12, 2) NOT NULL DEFAULT 0,
    CONSTRAINT chk_ventas_total CHECK (total >= 0),
    CONSTRAINT fk_ventas_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuarios (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_ventas_cliente FOREIGN KEY (cliente_id)
        REFERENCES clientes (id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB;

-- Detalle de la venta: composición con ventas (RF-05, RF-06)
CREATE TABLE detalle_venta (
    venta_id         INT NOT NULL,
    producto_id      INT NOT NULL,
    cantidad         INT NOT NULL,
    precio_unitario  DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (venta_id, producto_id),
    CONSTRAINT chk_detalle_cantidad CHECK (cantidad > 0),
    CONSTRAINT chk_detalle_precio CHECK (precio_unitario > 0),
    CONSTRAINT fk_detalle_venta FOREIGN KEY (venta_id)
        REFERENCES ventas (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_detalle_producto FOREIGN KEY (producto_id)
        REFERENCES productos (id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB;

-- Bitácora de entradas y salidas de inventario (RF-07)
CREATE TABLE movimientos_inventario (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    producto_id  INT NOT NULL,
    usuario_id   INT NOT NULL,
    tipo         ENUM('entrada', 'salida') NOT NULL,
    cantidad     INT NOT NULL,
    motivo       VARCHAR(255),
    fecha        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_movimientos_cantidad CHECK (cantidad > 0),
    CONSTRAINT fk_movimientos_producto FOREIGN KEY (producto_id)
        REFERENCES productos (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_movimientos_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuarios (id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB;

-- Índices para los reportes (RF-08)
CREATE INDEX idx_ventas_fecha ON ventas (fecha);
CREATE INDEX idx_movimientos_producto_fecha ON movimientos_inventario (producto_id, fecha);
CREATE INDEX idx_productos_existencias ON productos (existencias);
