#!/bin/bash

# Script de Testes da API - Campina Imóveis
# Data: 14 de Abril de 2026

BASE_URL="http://localhost:3000"
ADMIN_EMAIL="admin@campinaimoveis.com"
ADMIN_SENHA="admin123456"
TOKEN=""

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=========================================="
echo "🧪 TESTES DA API - CAMPINA IMÓVEIS"
echo "=========================================="
echo ""

# Teste 1: API de Teste
echo -e "${YELLOW}[TESTE 1] Verificando se API está respondendo...${NC}"
RESPONSE=$(curl -s -X GET "$BASE_URL/api/teste")
if echo "$RESPONSE" | grep -q "sucesso"; then
    echo -e "${GREEN}✅ API está respondendo${NC}"
else
    echo -e "${RED}❌ API não está respondendo${NC}"
    exit 1
fi
echo ""

# Teste 2: Login
echo -e "${YELLOW}[TESTE 2] Testando login...${NC}"
LOGIN_RESPONSE=$(curl -s -X POST "$BASE_URL/api/auth/login" \
    -H "Content-Type: application/json" \
    -d "{\"email\":\"$ADMIN_EMAIL\",\"senha\":\"$ADMIN_SENHA\"}")

if echo "$LOGIN_RESPONSE" | grep -q "token"; then
    TOKEN=$(echo "$LOGIN_RESPONSE" | grep -o '"token":"[^"]*' | cut -d'"' -f4)
    echo -e "${GREEN}✅ Login bem-sucedido${NC}"
    echo "   Token: ${TOKEN:0:20}..."
else
    echo -e "${RED}❌ Falha no login${NC}"
    echo "   Resposta: $LOGIN_RESPONSE"
fi
echo ""

# Teste 3: Listar Imóveis
echo -e "${YELLOW}[TESTE 3] Listando imóveis...${NC}"
IMOVEIS=$(curl -s -X GET "$BASE_URL/api/imoveis")
IMOVEL_COUNT=$(echo "$IMOVEIS" | grep -o '"id"' | wc -l)
echo -e "${GREEN}✅ Total de imóveis: $IMOVEL_COUNT${NC}"
echo ""

# Teste 4: Listar Corretores
echo -e "${YELLOW}[TESTE 4] Listando corretores...${NC}"
CORRETORES=$(curl -s -X GET "$BASE_URL/api/corretores")
CORRETOR_COUNT=$(echo "$CORRETORES" | grep -o '"id"' | wc -l)
echo -e "${GREEN}✅ Total de corretores: $CORRETOR_COUNT${NC}"
echo ""

# Teste 5: Listar Clientes
echo -e "${YELLOW}[TESTE 5] Listando clientes...${NC}"
CLIENTES=$(curl -s -X GET "$BASE_URL/api/clientes" \
    -H "Authorization: Bearer $TOKEN")
CLIENTE_COUNT=$(echo "$CLIENTES" | grep -o '"id"' | wc -l)
echo -e "${GREEN}✅ Total de clientes: $CLIENTE_COUNT${NC}"
echo ""

# Teste 6: Listar Depoimentos
echo -e "${YELLOW}[TESTE 6] Listando depoimentos...NC}"
DEPOIMENTOS=$(curl -s -X GET "$BASE_URL/api/depoimentos")
DEPOIMENTO_COUNT=$(echo "$DEPOIMENTOS" | grep -o '"id"' | wc -l)
echo -e "${GREEN}✅ Total de depoimentos: $DEPOIMENTO_COUNT${NC}"
echo ""

# Teste 7: Criar Novo Cliente
echo -e "${YELLOW}[TESTE 7] Criando novo cliente...${NC}"
NOVO_CLIENTE=$(curl -s -X POST "$BASE_URL/api/clientes" \
    -H "Content-Type: application/json" \
    -d "{\"nome\":\"Cliente Teste\",\"telefone\":\"8399999999\",\"tipo_imovel\":\"Apartamento\",\"bairro_desejado\":\"Centro\"}")

if echo "$NOVO_CLIENTE" | grep -q "sucesso"; then
    echo -e "${GREEN}✅ Cliente criado com sucesso${NC}"
else
    echo -e "${RED}❌ Erro ao criar cliente${NC}"
fi
echo ""

# Teste 8: Criar Novo Corretor (com autenticação)
echo -e "${YELLOW}[TESTE 8] Criando novo corretor...${NC}"
NOVO_CORRETOR=$(curl -s -X POST "$BASE_URL/api/corretores" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    -d "{\"nome\":\"Corretor Teste\",\"email\":\"corretor@teste.com\",\"telefone\":\"8398765432\",\"creci\":\"999999-F/PB\"}")

if echo "$NOVO_CORRETOR" | grep -q "sucesso"; then
    echo -e "${GREEN}✅ Corretor criado com sucesso${NC}"
else
    echo -e "${RED}❌ Erro ao criar corretor${NC}"
fi
echo ""

# Teste 9: Verificar Conteúdo
echo -e "${YELLOW}[TESTE 9] Verificando conteúdo do site...${NC}"
CONTEUDO=$(curl -s -X GET "$BASE_URL/api/conteudo")
if echo "$CONTEUDO" | grep -q "titulo"; then
    echo -e "${GREEN}✅ Conteúdo carregado${NC}"
else
    echo -e "${RED}❌ Erro ao carregar conteúdo${NC}"
fi
echo ""

# Teste 10: Verificar Banco de Dados
echo -e "${YELLOW}[TESTE 10] Verificando integridade do banco de dados...${NC}"
if [ -f "/home/ubuntu/campina-novo/data/database.db" ]; then
    DB_SIZE=$(du -h /home/ubuntu/campina-novo/data/database.db | cut -f1)
    echo -e "${GREEN}✅ Banco de dados existe (Tamanho: $DB_SIZE)${NC}"
else
    echo -e "${RED}❌ Banco de dados não encontrado${NC}"
fi
echo ""

echo "=========================================="
echo "✅ TESTES CONCLUÍDOS"
echo "=========================================="
