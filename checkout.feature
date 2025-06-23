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
Então deve aparecer a mensagem "Preencha todos os campos obrigatórios"

Contexto: E-mail inválido
Quando eu preencher todos os campos obrigatórios (marcado com asterisco)
E inserir um e-mail inválido
Então deve aparecer a mensagem "Erro: e-mail inválido"



###############################################

Cenário: Cadastro válido
Quando eu preencher os campos <usuario>, <senha>, <numero>, <endereco>
E o <email> válido
Então deve aparecer a <mensagem>

Exemplo:
| usuario | email              | senha         | numero           | endereco                    | mensagem                          |
| joao    | "joao@ebac.com"    | "joao@123"    | "(11)12345-1234" | "rua A, numero 1, bairro 1" | "Cadastro realizado com sucesso!" |
| maria   | "maria@ebac.com"   | "maria@123"   | "(12)12345-1234" | "rua B, numero 2, bairro 2" | "Cadastro realizado com sucesso!" |
| pedro   | "pedro@ebac.com"   | "pedro@123"   | "(13)12345-1234" | "rua C, numero 3, bairro 3" | "Cadastro realizado com sucesso!" |
| carla   | "carla@ebac.com"   | "carla@123"   | "(14)12345-1234" | "rua D, numero 4, bairro 3" | "Cadastro realizado com sucesso!" |
| sabrina | "sabrina@ebac.com" | "sabrina@123" | "(15)12345-1234" | "rua E, numero 5, bairro 4" | "Cadastro realizado com sucesso!" |

###############################################

Cenário: Campos vazios
Quando algum dos campos <usuario>, <senha>, <numero>, <endereco> não for preenchido
E o inserir o <email> válido
Então deve aparecer a <mensagem>

Exemplo:
| usuario | email              | senha         | numero           | endereco                    | mensagem                                |
| joao    | "joao@ebac.com"    | "joao@123"    |                  | "rua A, numero 1, bairro 1" | "Preencha todos os campos obrigatórios" |
| maria   | "maria@ebac.com"   |               | "(12)12345-1234" | "rua B, numero 2, bairro 2" | "Preencha todos os campos obrigatórios" |
| pedro   |                    | "pedro@123"   | "(13)12345-1234" | "rua C, numero 3, bairro 3" | "Preencha todos os campos obrigatórios" |
|         | "carla@ebac.com"   | "carla@123"   | "(14)12345-1234" |                             | "Preencha todos os campos obrigatórios" |
| sabrina | "sabrina@ebac.com" | "sabrina@123" |                  | "rua E, numero 5, bairro 4" | "Preencha todos os campos obrigatórios" |

###############################################

Cenário: E-mail inválido
Quando eu preencher os campos <usuario>, <senha>, <numero>, <endereco>
E o <email> inválido
Então deve aparecer a <mensagem>

Exemplo:
| usuario | email             | senha         | numero           | endereco                    | mensagem                |
| joao    | "joao@ebac"       | "joao@123"    | "(11)12345-1234" | "rua A, numero 1, bairro 1" | "Erro: e-mail inválido" |
| maria   | "mariaebac.com"   | "maria@123"   | "(12)12345-1234" | "rua B, numero 2, bairro 2" | "Erro: e-mail inválido" |
| pedro   | "pedro@@ebac.com" | "pedro@123"   | "(13)12345-1234" | "rua C, numero 3, bairro 3" | "Erro: e-mail inválido" |
| carla   | "carla@ebac..com" | "carla@123"   | "(14)12345-1234" | "rua D, numero 4, bairro 3" | "Erro: e-mail inválido" |
| sabrina | "sabrina@.com"    | "sabrina@123" | "(15)12345-1234" | "rua E, numero 5, bairro 4" | "Erro: e-mail inválido" |

###############################################
