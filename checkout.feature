#language: pt

Funcionalidade: Tela de cadastro (Checkout)
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

###############################################

Contexto:
Dado que eu acesse a página de cadastro do site da EBAC-SHOP para finalizar a minha compra

Contexto: Cadastro válido
Quando eu preencher todos os campos obrigatórios (marcado com asterisco)
E inserir um e-mail válido
Então deve aparecer a mensagem "Cadastro realizado com sucesso!"

Contexto: Campos vazios
Quando eu não preencher um ou mais campos obrigatórios (marcado com asterisco)
E inserir um e-mail válido
Então deve aparecer a mensagem "Preencha os campos obrigatórios"

Contexto: E-mail inválido
Quando eu preencher todos os campos obrigatórios (marcado com asterisco)
E inserir um e-mail inválido
Então deve aparecer a mensagem "E-mail inválido"



###############################################

Esquema de cenário: Validar cadastro
Quando preencher os campos <usuario>, <email>, <senha>, <numero> e <endereco>
Então deve aparecer a <mensagem>

Exemplo:
| usuario | email             | senha       | numero           | endereco                    | mensagem                 	 |
| joao    | "joao@ebac.com"   | "joao@123"  | "(11)12345-1234" | "rua A, numero 1, bairro 1" | "Cadastro realizado com sucesso!" |
| maria   | "maria@ebac.com"  | "maria@123" | "(12)12345-1234" |                             | "Preencha os campos obrigatórios" |
| pedro   | "pedro@@ebac.com" | "pedro@123" | "(13)12345-1234" | "rua C, numero 3, bairro 3" | "E-mail inválido"             |

###############################################