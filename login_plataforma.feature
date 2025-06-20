#language: pt
Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

###############################################

Contexto:
Dado eu acesse a página de autenticação do site EBAC-SHOP

Cenário: Autenticação válida
Quando eu inserir usuário e senha válidos
E clicar em "Login"
Então deve exibir´tela de checkout

Cenário: Usuário inválido
Quando eu inserir um usuário inválido
E clicar em "Login"
Então deve aparecer a seguinte mensagem "Usuário ou senha inválidos"

Cenário: Senha inválida
Quando eu inserir uma senha inválida
E clicar em "Login"
Então deve aparecer a seguinte mensagem "Usuário ou senha inválidos"

###############################################