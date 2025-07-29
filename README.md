# Projeto: Validação de JSON com Cucumber, Ruby e HTTParty

Este projeto realiza testes automatizados em APIs usando Ruby, Cucumber e HTTParty. 
---

## ✅ Pré-requisitos

Necessário ter os seguintes itens instalados na máquina:

### 🧰 1. Ruby

#### Windows:
- Baixe e instale o Ruby via [https://rubyinstaller.org](https://rubyinstaller.org)
- Durante a instalação, marque a opção **“Add Ruby to PATH”** e instale o **MSYS2** no final.

---

### 📦 2. Bundler (gerenciador de dependências Ruby)

Instale o bundler globalmente:
```bash
gem install bundler
```

Verifique:
```bash
bundle -v
```

---

## 🚀 Como rodar o projeto

### 1. Clone ou copie o projeto para a máquina:

```bash
git clone <url-do-repositorio>
cd <nome-do-projeto>
```
---

### 2. Instale as dependências do projeto

Execute dentro da pasta do projeto:

```bash
bundle install
```

Isso instalará as gems listadas no `Gemfile`, como `cucumber`, `rspec` e `httparty`.

---

### 3. Execute os testes

Para rodar todos os cenários de teste:

```bash
bundle exec cucumber
```

Você verá no terminal o resultado dos testes, incluindo mensagens e saídas aleatórias, como tipos de estabelecimento da API da VR.

---

## 📂 Estrutura do Projeto

```
.
├── features
│   ├── remover_texto.feature             # Cenários em Gherkin
│   ├── validar_estabelecimentos.feature  # Validação de JSON com API
│   ├── step_definitions
│   │   ├── remover_texto_steps.rb
│   │   └── estabelecimentos_steps.rb
│   ├── support
│   │   └── remover_comentarios.rb        # Funções Ruby auxiliares
│   └── services
│       └── api_service.rb                # HTTParty para requisições
├── Gemfile
└── README.md
```

---

## 🧪 Testado em

- Ruby 3.4.0 (Windows)
- Cucumber 10+
- HTTParty
- VS Code + terminal Cmd

---