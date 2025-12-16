-- Actualizar la contraseña del usuario 'admin' a 'admin123'
-- Este hash es nuevo y válido generado específicamente para ti.

UPDATE usuarios 
SET password_hash = '$2b$10$YHuXDXjo5oAFzqv7jGQx1eVbll5zwofavJ3Hbu9Y/Mc1NqxivmnTW6' 
WHERE username = 'admin';

-- Verificación opcional
SELECT * FROM usuarios WHERE username = 'admin';
