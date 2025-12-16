-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    last_password_change DATETIME DEFAULT NULL
);

-- Insertar usuario inicial con contraseña 'admin123'
-- Este hash fue generado con bcrypt (cost: 10)
INSERT INTO usuarios (username, password_hash, last_password_change)
SELECT 'admin', '$2b$10$K4ESq/ItK9R4Oh.KKp.k52.KWpmbbBf/7STSiH5JcKpAoML5be0U5', NOW()
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE username = 'admin');
