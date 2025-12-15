-- ============================================
-- Script SQL - Sistema de Gestión de Agencia
-- Basado en el diagrama de MySQL Workbench
-- ============================================

-- Crear base de datos (si no existe)
CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

-- ============================================
-- Tabla: estatus
-- ============================================
CREATE TABLE IF NOT EXISTS estatus (
    id_estatus INT NOT NULL AUTO_INCREMENT,
    estatus VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_estatus)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insertar estatus por defecto
INSERT INTO estatus (estatus) VALUES 
    ('Activo'),
    ('Inactivo'),
    ('Pendiente'),
    ('Suspendido')
ON DUPLICATE KEY UPDATE estatus=estatus;

-- ============================================
-- Tabla: personae (personas)
-- ============================================
CREATE TABLE IF NOT EXISTS personae (
    id_persona INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido_paterno VARCHAR(100) NOT NULL,
    apellido_materno VARCHAR(100),
    CURP VARCHAR(18),
    edad INT,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    direccion VARCHAR(255),
    aso_alta_agencia YEAR,
    credencial ENUM('Si', 'No') DEFAULT 'No',
    solicitud_cambio_propietario ENUM('Si', 'No') DEFAULT 'No',
    constancia_no_adeudo ENUM('Si', 'No') DEFAULT 'No',
    id_estatus INT,
    PRIMARY KEY (id_persona),
    FOREIGN KEY (id_estatus) REFERENCES estatus(id_estatus) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabla: aportaciones
-- ============================================
CREATE TABLE IF NOT EXISTS aportaciones (
    id_aportacion INT NOT NULL AUTO_INCREMENT,
    id_persona INT NOT NULL,
    ano YEAR NOT NULL,
    cooperacion_retiro VARCHAR(255),
    analie_trequis ENUM('Si', 'No') DEFAULT 'No',
    jusdia_reunidas ENUM('Si', 'No') DEFAULT 'No',
    utilid_renuevas VARCHAR(255),
    PRIMARY KEY (id_aportacion),
    FOREIGN KEY (id_persona) REFERENCES personae(id_persona) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Tabla: cargos
-- ============================================
CREATE TABLE IF NOT EXISTS cargos (
    id_cargo_persona INT NOT NULL AUTO_INCREMENT,
    id_persona INT NOT NULL,
    id_cargo ENUM('Presidente', 'Secretario', 'Tesorero', 'Vocal') NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    PRIMARY KEY (id_cargo_persona),
    FOREIGN KEY (id_persona) REFERENCES personae(id_persona) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Datos de Ejemplo (Opcional)
-- ============================================

-- Puedes descomentar estas líneas para agregar datos de ejemplo:

/*
-- Insertar personas de ejemplo
INSERT INTO personae (nombre, apellido_paterno, apellido_materno, CURP, edad, telefono, correo, direccion, aso_alta_agencia, id_estatus) VALUES
('Juan', 'Pérez', 'García', 'PEGJ850315HDFRNS01', 38, '5551234567', 'juan.perez@example.com', 'Calle Principal 123', 2020, 1),
('María', 'López', 'Martínez', 'LOMM900520MDFPRS02', 33, '5557654321', 'maria.lopez@example.com', 'Avenida Central 456', 2019, 1),
('Carlos', 'Sánchez', 'Rodríguez', 'SARC780612HDFNRL03', 45, '5559876543', 'carlos.sanchez@example.com', 'Boulevard Norte 789', 2018, 1);

-- Insertar aportaciones de ejemplo
INSERT INTO aportaciones (id_persona, ano, cooperacion_retiro, analie_trequis, jusdia_reunidas) VALUES
(1, 2024, '$500.00', 'Si', 'Si'),
(1, 2023, '$500.00', 'Si', 'No'),
(2, 2024, '$450.00', 'No', 'Si'),
(3, 2024, '$600.00', 'Si', 'Si');

-- Insertar cargos de ejemplo
INSERT INTO cargos (id_persona, id_cargo, fecha_inicio, fecha_fin) VALUES
(1, 'Presidente', '2024-01-01', '2024-12-31'),
(2, 'Secretario', '2024-01-01', '2024-12-31'),
(3, 'Tesorero', '2024-01-01', '2024-12-31');
*/

-- ============================================
-- Verificar tablas creadas
-- ============================================
SHOW TABLES;

-- Ver estructura de las tablas
DESC estatus;
DESC personae;
DESC aportaciones;
DESC cargos;
