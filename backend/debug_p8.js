const fetch = require('node-fetch'); // Assuming node-fetch is available or using native fetch in node 18+

async function check() {
    try {
        const response = await fetch('http://localhost:4000/api/personas');
        const data = await response.json();
        const p8 = data.find(p => p.id_persona === 8);
        console.log('DATA FOR ID 8:', JSON.stringify(p8, null, 2));
    } catch (e) {
        console.error(e);
    }
}
check();
