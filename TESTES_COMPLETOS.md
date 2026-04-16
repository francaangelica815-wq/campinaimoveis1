# 🧪 PLANO DE TESTES COMPLETOS - CAMPINA IMÓVEIS

**Data:** 14 de Abril de 2026  
**Versão:** 1.0  
**Ambiente:** Produção Local (http://localhost:3000)

---

## 📋 ÍNDICE DE TESTES

1. [Testes do Site Público](#testes-do-site-público)
2. [Testes do Painel Admin](#testes-do-painel-admin)
3. [Testes de Integração](#testes-de-integração)
4. [Testes de Responsividade](#testes-de-responsividade)
5. [Testes de Performance](#testes-de-performance)

---

## 🌐 TESTES DO SITE PÚBLICO

### 1.1 Teste de Navegação
- [ ] **Header**: Logo aparece corretamente
- [ ] **Header**: Menu de navegação funciona (Home, Imóveis, Sobre, Contato)
- [ ] **Header**: Botões "Entrar" e "Anunciar Imóvel" aparecem
- [ ] **Scroll**: Navegação suave entre seções

### 1.2 Teste de Slides (Hero Section)
- [ ] **Slide 1**: Aparece com título "Viver, Sonhar e Realizar!"
- [ ] **Slide 2**: Aparece com título "Encontre Seu Lar Perfeito"
- [ ] **Slide 3**: Aparece com título "Saiba Mais sobre Nossos Imóveis"
- [ ] **Auto-play**: Slides mudam automaticamente a cada 5 segundos
- [ ] **Navegação Manual**: Botões anterior/próximo funcionam
- [ ] **Indicadores**: Dots mostram qual slide está ativo
- [ ] **Animações**: Transições suaves entre slides

### 1.3 Teste de Busca de Imóveis
- [ ] **Filtro por Tipo**: Dropdown funciona (Apartamento, Casa, Terreno)
- [ ] **Filtro por Bairro**: Campo de texto aceita entrada
- [ ] **Botão Filtrar**: Clique aplica filtros
- [ ] **Resultados**: Imóveis aparecem após filtro

### 1.4 Teste de Listagem de Imóveis
- [ ] **Carregamento**: Imóveis carregam do banco de dados
- [ ] **Cards**: Mostram foto, título, tipo, preço, bairro
- [ ] **Informações**: Todos os dados aparecem corretamente
- [ ] **Grid**: Layout responsivo (3 colunas em desktop)

### 1.5 Teste de Seção de Vendas (Gatilhos Mentais)
- [ ] **Card 1**: "Mais de 500 Imóveis" aparece
- [ ] **Card 2**: "Corretores Experientes" aparece
- [ ] **Card 3**: "Melhores Preços" aparece
- [ ] **Card 4**: "100% Seguro" aparece
- [ ] **Ícones**: Todos os ícones aparecem corretamente

### 1.6 Teste de Depoimentos
- [ ] **Carregamento**: Depoimentos carregam do banco de dados
- [ ] **Cards**: Mostram nome, depoimento, estrelas
- [ ] **Grid**: Layout responsivo

### 1.7 Teste de Call-to-Action (CTA)
- [ ] **Formulário**: Campos aparecem (Nome, Email, Mensagem)
- [ ] **Validação**: Campos obrigatórios funcionam
- [ ] **Envio**: Botão "Enviar Mensagem" funciona
- [ ] **Feedback**: Mensagem de sucesso/erro aparece

### 1.8 Teste de Rodapé - Comece Agora
- [ ] **Formulário**: Campos aparecem (Nome, Telefone, Tipo, Bairro)
- [ ] **Validação**: Campos obrigatórios funcionam
- [ ] **Envio**: Dados são salvos no banco
- [ ] **Feedback**: Mensagem de sucesso aparece
- [ ] **Admin**: Cliente aparece na seção de clientes do admin

### 1.9 Teste de Rodapé - Fale com Consultor
- [ ] **Carregamento**: Corretores carregam da API
- [ ] **Cards**: Mostram nome, CRECI, bio, contato
- [ ] **Botão WhatsApp**: Abre conversa no WhatsApp
- [ ] **Grid**: Layout responsivo

### 1.10 Teste de Rodapé - Informações
- [ ] **Telefone**: (83) 3063-2323 aparece
- [ ] **WhatsApp**: (83) 99893-4950 aparece
- [ ] **Email**: contato@campinaimoveis.com aparece
- [ ] **Endereço**: Rua Principal, 123 aparece
- [ ] **CRECI**: 123456-F/PB aparece
- [ ] **Horário**: Seg-Sex: 08:00-18:00 aparece

### 1.11 Teste de Botão WhatsApp Flutuante
- [ ] **Visibilidade**: Botão aparece em todas as páginas
- [ ] **Posição**: Fixo no canto inferior direito
- [ ] **Funcionalidade**: Abre WhatsApp ao clicar
- [ ] **Mensagem**: Mensagem padrão aparece

### 1.12 Teste de Termos e Condições
- [ ] **Modal**: Abre ao clicar em "Termos e Condições"
- [ ] **Conteúdo**: Todos os 5 pontos aparecem
- [ ] **Fechamento**: Botão "Fechar" funciona
- [ ] **Overlay**: Clique fora fecha modal

---

## 🔐 TESTES DO PAINEL ADMIN

### 2.1 Teste de Login
- [ ] **Página**: Carrega corretamente
- [ ] **Campos**: Email e Senha aparecem
- [ ] **Validação**: Rejeita credenciais inválidas
- [ ] **Sucesso**: Login com admin@campinaimoveis.com / admin123456 funciona
- [ ] **Redirecionamento**: Vai para dashboard após login

### 2.2 Teste de Dashboard
- [ ] **Estatísticas**: Total de Imóveis aparece
- [ ] **Estatísticas**: Imóveis em Destaque aparece
- [ ] **Estatísticas**: Depoimentos Pendentes aparece
- [ ] **Estatísticas**: Depoimentos Aprovados aparece
- [ ] **Tabela**: Últimos imóveis adicionados aparecem

### 2.3 Teste de Gerenciamento de Imóveis
- [ ] **Listar**: Todos os imóveis aparecem na tabela
- [ ] **Novo**: Botão "+ Novo Imóvel" abre modal
- [ ] **Formulário**: Todos os campos aparecem
- [ ] **Criar**: Novo imóvel é criado com sucesso
- [ ] **Editar**: Imóvel pode ser editado
- [ ] **Deletar**: Imóvel pode ser deletado
- [ ] **Upload**: Imagens podem ser enviadas
- [ ] **Destaque**: Checkbox de destaque funciona

### 2.4 Teste de Gerenciamento de Corretores
- [ ] **Listar**: Corretores padrão aparecem (João, Maria, Pedro)
- [ ] **Novo**: Botão "+ Novo Corretor" abre modal
- [ ] **Formulário**: Campos aparecem (Nome, Email, Telefone, WhatsApp, CRECI, Bio)
- [ ] **Criar**: Novo corretor é criado com sucesso
- [ ] **Editar**: Corretor pode ser editado
- [ ] **Deletar**: Corretor pode ser deletado

### 2.5 Teste de Gerenciamento de Clientes
- [ ] **Listar**: Clientes aparecem na tabela
- [ ] **Atribuir**: Botão "Atribuir" funciona
- [ ] **Atribuição**: Cliente é atribuído a corretor
- [ ] **Deletar**: Cliente pode ser deletado
- [ ] **Status**: Status do cliente aparece corretamente

### 2.6 Teste de Depoimentos
- [ ] **Listar**: Depoimentos aparecem
- [ ] **Aprovar**: Depoimentos podem ser aprovados
- [ ] **Rejeitar**: Depoimentos podem ser rejeitados
- [ ] **Filtro**: Filtro por status funciona

### 2.7 Teste de Edição de Conteúdo
- [ ] **Campos**: Todos os campos aparecem
- [ ] **Edição**: Dados podem ser editados
- [ ] **Salvamento**: Alterações são salvas

### 2.8 Teste de Logout
- [ ] **Botão**: Botão "Sair" aparece
- [ ] **Logout**: Clique faz logout
- [ ] **Redirecionamento**: Volta para página de login

---

## 🔗 TESTES DE INTEGRAÇÃO

### 3.1 Integração Site → Banco de Dados
- [ ] **Imóveis**: Imóveis do BD aparecem no site
- [ ] **Depoimentos**: Depoimentos do BD aparecem no site
- [ ] **Corretores**: Corretores do BD aparecem no rodapé
- [ ] **Conteúdo**: Informações do BD aparecem no site

### 3.2 Integração Admin → Banco de Dados
- [ ] **Criar**: Novo imóvel aparece no site após criar no admin
- [ ] **Editar**: Edição no admin reflete no site
- [ ] **Deletar**: Imóvel deletado some do site
- [ ] **Destaque**: Imóvel marcado como destaque aparece em destaque

### 3.3 Integração Formulários → Banco de Dados
- [ ] **Cliente**: Cadastro no rodapé salva no BD
- [ ] **Admin**: Cliente aparece na seção de clientes do admin
- [ ] **Contato**: Formulário de contato salva no BD
- [ ] **Depoimento**: Depoimento salva no BD

### 3.4 Integração WhatsApp
- [ ] **Botão Flutuante**: Abre WhatsApp com mensagem padrão
- [ ] **Corretor**: Botão de corretor abre WhatsApp com nome
- [ ] **Número**: Número correto é usado (5583999934950)

---

## 📱 TESTES DE RESPONSIVIDADE

### 4.1 Desktop (1920x1080)
- [ ] **Layout**: Todos os elementos aparecem corretamente
- [ ] **Navegação**: Menu horizontal funciona
- [ ] **Grid**: 3 colunas para imóveis
- [ ] **Espaçamento**: Padding e margin corretos

### 4.2 Tablet (768x1024)
- [ ] **Layout**: Elementos se reorganizam
- [ ] **Navegação**: Menu se adapta
- [ ] **Grid**: 2 colunas para imóveis
- [ ] **Toque**: Botões são clicáveis

### 4.3 Mobile (375x667)
- [ ] **Layout**: Elementos em coluna única
- [ ] **Navegação**: Menu se adapta (hamburger se necessário)
- [ ] **Grid**: 1 coluna para imóveis
- [ ] **Toque**: Botões são clicáveis
- [ ] **Formulários**: Campos ocupam largura total

### 4.4 Orientação
- [ ] **Portrait**: Layout funciona em retrato
- [ ] **Landscape**: Layout funciona em paisagem

---

## ⚡ TESTES DE PERFORMANCE

### 5.1 Velocidade de Carregamento
- [ ] **Página Inicial**: Carrega em menos de 3 segundos
- [ ] **Admin**: Carrega em menos de 2 segundos
- [ ] **Imóveis**: Carregam dinamicamente sem travamento

### 5.2 Animações
- [ ] **Slides**: Transições suaves
- [ ] **Hover**: Efeitos de hover funcionam
- [ ] **Scroll**: Scroll suave funciona

### 5.3 Validação de Dados
- [ ] **Campos Obrigatórios**: Validação funciona
- [ ] **Formato Email**: Validação funciona
- [ ] **Formato Telefone**: Aceita números

---

## 📊 RESUMO DE TESTES

| Categoria | Total | Passou | Falhou | Taxa Sucesso |
|-----------|-------|--------|--------|--------------|
| Site Público | 60 | - | - | - |
| Painel Admin | 35 | - | - | - |
| Integração | 12 | - | - | - |
| Responsividade | 12 | - | - | - |
| Performance | 8 | - | - | - |
| **TOTAL** | **127** | - | - | - |

---

## 📝 NOTAS

- Todos os testes devem ser executados em navegador Chrome/Firefox
- Limpar cache do navegador antes de testes
- Usar dados de teste realistas
- Documentar qualquer comportamento inesperado

---

## ✅ ASSINATURA

**Testador:** Sistema Automatizado  
**Data:** 14 de Abril de 2026  
**Status:** Pendente de Execução

