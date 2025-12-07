# To-Do List (Lista de Tarefas) ✅

Este é o meu projeto de uma API para gerenciar tarefas. Eu desenvolvi esse código para estudar **Java** e **Spring Boot**.

O objetivo do sistema é permitir que um usuário se cadastre e crie suas tarefas, definindo prioridade e datas.

## 🔨 Tecnologias que usei

* **Java 17**
* **Spring Boot** (Para criar a API)
* **H2 Database** (Banco de dados que roda na memória)
* **Lombok** (Para diminuir a repetição de código)
* **Docker** (Para facilitar o deploy)
* **Render** (Onde o site está hospedado)

## 🔒 Segurança e Autenticação

Para proteger os dados, implementei um sistema de segurança:

1.  **Criptografia:** Usei a biblioteca **BCrypt** para transformar a senha do usuário em um código seguro (hash) antes de salvar no banco.
2.  **Autenticação:** Usei o padrão **Basic Auth**. Para criar ou listar tarefas, é necessário enviar o usuário e senha no cabeçalho da requisição.

## ⚙️ O que o sistema faz?

1.  **Usuários:**
    * Qualquer pessoa pode criar uma conta.
    * O sistema valida se o nome de usuário já existe.

2.  **Tarefas:**
    * Só usuários cadastrados e autenticados podem criar tarefas.
    * A tarefa tem título, descrição, data de início/fim e prioridade.
    * O sistema valida as datas (ex: não permite terminar uma tarefa antes de começar).

## 🧪 Como testar (Apidog)

Eu utilizei o **Apidog** para testar todas as rotas da API. Você pode usar ele (ou o Postman) para testar os endpoints:

* **POST** `/users/` -> Cria um usuário.
* **POST** `/tasks/` -> Cria uma tarefa (Use a aba **Auth** > **Basic Auth** com seu usuário e senha).
* **GET** `/tasks/` -> Lista suas tarefas (Use a aba **Auth** > **Basic Auth**).
* **PUT** `/tasks/{id}` -> Altera uma tarefa (Use a aba **Auth** > **Basic Auth**).

---
Feito com 💜 por **Camylla Oliveira**.
