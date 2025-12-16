const mysql = require('mysql2/promise');

const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: '1312',
    database: 'agencia',
    port: 3306
};

async function checkSchema() {
    try {
        const connection = await mysql.createConnection(dbConfig);
        console.log('Conectado a la base de datos.');

        const [rows] = await connection.query('DESCRIBE cargos');
        console.log('Estructura de la tabla cargos:');
        console.table(rows);

        await connection.end();
    } catch (error) {
        console.error('Error:', error.message);
    }
}

checkSchema();
