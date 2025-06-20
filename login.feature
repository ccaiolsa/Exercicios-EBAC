#language: pt
#encoding: utf-8

Funcionalidade: tela de login.
Como aluno do portal EBAC
Quero me autenticar
Para visualizar minhas notas

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC.

Cenário: autenticação válida.
Quando eu digitar o usuário "joao@ebac.com.br".
  E a senha "senha@123".
Então deve exibir uma mensagem de boas vindas "Olá João".

Cenário: usuário inexistente.
Quando eu digitar o usuário "jjjj@ebac.com.br".
  E a senha "senha@123".
Então deve exibir uma mensagem de alerta"Usuário inexistente".

Cenário: autenticação válida.
Quando eu digitar o usuário "joao@ebac.com.br".
  E a senha "123456789".
Então deve exibir uma mensagem de alerta "Usuário ou senha Inválidos".


Esquema do Cenário: autenticar multiplos usuários.
Quando eu digitar o <usuario>.
  E a <senha>.
Então deve exibir a <mensagem> de sucesso.

Exemplos:
| cenario | usuario          | senha     | mensagem |
| 1       |"joao@ebac.com.br"|"senha@123"|"Olá João"| 
| 2       | xxxxx | xxxxx | xxxxx     | 
| 3       | xxxxx | xxxxx | xxxxx     |
