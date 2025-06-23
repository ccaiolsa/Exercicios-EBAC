#language: pt
#encoding: utf-8

Funcionalidade: Configurar produto.
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

###############################################

Contexto:
Dado que eu escolha um produto do site EBAC-SHOP

Cenário: Inserir produto válido
Quando eu escolher a cor "laranja", tamanho "M" e 1 unidade do produto
E clicar em "Adicionar no carrinho"
Então deve aparecer a mensagem "Item enviado"

Cenário: Produto inválido: não selecionar a cor
Quando eu não escolher a cor, mas o tamanho "M" e 1 unidade do produto
E clicar em "Adicionar no carrinho"
Então deve aparecer a mensagem "Escolha a cor desejada"

Cenário: Produto inválido: não selecionar o tamanho
Quando eu escolher a cor "laranja", 1 unidade do produto, mas não escolher o tamanho
E clicar em "Adicionar no carrinho"
Então deve aparecer a mensagem "Escolha o tamanho desejado"

Cenário: Produto inválido: não selecionar a quantidade
Quando eu escolher a cor "laranja", o tamanho "M", mas não escolher a quantidade
E clicar em "Adicionar no carrinho"
Então deve aparecer a mensagem "Escolha a quantidade desejada"

Cenário: Quantidade inválida: limite excedido
Quando eu escolher a cor "laranja", o tamanho "M", 11 unidades do produto
E clicar em "Adicionar no carrinho"
Então deve aparecer a mensagem "Por favor, selecione até 10 unidades"

Cenário: Limpar seleção
Quando eu escolher a cor, o tamanho e a quantidade
E clicar em "Limpar"
Então o produto exibido deve voltar ao estado original

###############################################
