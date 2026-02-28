# ToDo List API ✅

API REST desenvolvida em **Java** e **Spring Boot** para gerenciamento de tarefas pessoais.

O sistema permite cadastro de usuários autenticados e controle de tarefas com definição de prioridade, datas e validações de regras de negócio.

---

## ⚙️ Tecnologias Utilizadas

- Java 17
- Spring Boot
- Spring Data JPA
- H2 Database
- Lombok
- Docker
- Render (Deploy)

---

## 🔐 Segurança e Autenticação

A API implementa mecanismos básicos de segurança:

- Criptografia de senha utilizando **BCrypt**
- Autenticação via **HTTP Basic Auth**
- Proteção de endpoints restritos a usuários autenticados

---

## 🧩 Funcionalidades

### 👤 Usuários
- Cadastro de novos usuários
- Validação de unicidade do username
- Armazenamento seguro de senhas

### ✅ Tarefas
- CRUD completo de tarefas
- Definição de prioridade
- Controle de datas de início e término
- Validação de regras de negócio (ex.: data final não pode ser anterior à inicial)
- Acesso restrito por autenticação

---

## 🔄 Endpoints Principais

| Método | Endpoint | Descrição |
|---|---|---|
| POST | `/users` | Criar usuário |
| POST | `/tasks` | Criar tarefa |
| GET | `/tasks` | Listar tarefas |
| PUT | `/tasks/{id}` | Atualizar tarefa |

---

## 🧪 Testes da API

Os endpoints podem ser testados utilizando:

- Apidog
- Postman
- Insomnia

Para rotas protegidas, utilize autenticação **Basic Auth**.

---

## 🚀 Executando o Projeto

```bash
git clone https://github.com/camylla-ops/todolist-java-springboot
cd todolist-java-springboot
./mvnw spring-boot:run
