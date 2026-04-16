const fetch = require('node-fetch');

async function testarAPI() {
    try {
        // Testar login
        console.log('1. Testando login...');
        const loginRes = await fetch('http://localhost:3000/api/auth/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                email: 'admin@campinaimoveis.com',
                senha: 'admin123456'
            })
        });

        const loginData = await loginRes.json();
        console.log('Login response:', loginData);

        if (!loginData.token) {
            console.error('Erro ao fazer login');
            return;
        }

        const token = loginData.token;
        console.log('Token obtido:', token.substring(0, 20) + '...');

        // Testar criação de imóvel
        console.log('\n2. Testando criação de imóvel...');
        const imovelRes = await fetch('http://localhost:3000/api/imoveis', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${token}`
            },
            body: JSON.stringify({
                titulo: 'Teste Imóvel',
                tipo: 'Apartamento',
                preco: 250000,
                bairro: 'Bento',
                quartos: 2,
                banheiros: 1,
                area_total: 50,
                area_util: 45,
                destaque: 0
            })
        });

        const imovelData = await imovelRes.json();
        console.log('Imóvel response:', imovelData);

        // Testar listagem
        console.log('\n3. Testando listagem de imóveis...');
        const listRes = await fetch('http://localhost:3000/api/imoveis');
        const listData = await listRes.json();
        console.log('Total de imóveis:', listData.length);
        console.log('Primeiros imóveis:', listData.slice(0, 2));

    } catch (err) {
        console.error('Erro:', err);
    }
}

testarAPI();
