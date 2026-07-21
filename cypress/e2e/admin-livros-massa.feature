            #language: pt

            Funcionalidade: Administração de livros Hub de Leitura
            Como administrador do sistema
            Quero adicionar, editar e remover múltiplos livros de uma só vez
            Para que eu possa gerenciar o catálogo de forma rápida e eficiente

            Cenário: Adicionar novos livros com tabela de exemplo
            Dado que eu estou na página de administrador de livros
            Quando eu adiciono novos livros com os seguintes dados:
            | titulo            | autor         | categoria | exemplares |
            | Livros de teste 1 | Autor teste 1 | Aventura  | 2          |
            | Livros de teste 2 | Autor teste 2 | Infantil  | 30         |
            | Livros de teste 3 | Autor teste 3 | Romance   | 300        |
            Então deve aparecer uma mensagem: "Livro adicionado com sucesso!"

            @only
            Esquema do Cenário: Adicionar livros usando esquema de cenários - Livro: '<titulo>'
            Dado que eu estou na página de administrador de livros
            Quando eu adiciono um livro com "<titulo>", "<autor>", "<categoria>", "<exemplares>"
            Então deve aparecer uma mensagem: "Livro adicionado com sucesso!"

            Exemplos:
            | titulo                             | autor              | categoria | exemplares |
            | Livros de teste 1                  | Autor testeeeeee 1 | Aventura  | 2          |
            | Livros                             | Autor testesssss 2 | Infantil  | 3000       |
            | Livros de teste 33472              | Autor 3            | Romance   | 35         |
            | Livros de teste 4                  | A teste 1          | Tecnologia  | 1          |
            | Livro 5                            | Autor teste 2.     | Biografia  | 30         |
            | Livros de teste 6 com nome extenso | @Autor teste 3     | Terror  | 300        |