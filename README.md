# Tutoria Web App - Testes E2E (Robot Framework)

Este é o projeto de testes End-to-End (E2E) da aplicação **Tutoria Web App**, desenvolvido utilizando **Robot Framework** com os padrões **Page Object Model (POM)** para arquitetura e **Behavior-Driven Development (BDD)** para a escrita dos testes.

## 🛠️ Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) (Para automação web)
- [FakerLibrary](https://marketsquare.github.io/robotframework-faker/) (Para geração de dados fictícios)

## 📁 Estrutura de Diretórios

O projeto segue uma arquitetura baseada em Page Object Model (POM) para garantir reuso e manutenção:

```text
e2e/
├── tests/                   # Arquivos de suítes de teste (*.robot)
├── resources/
│   ├── main.robot           # Imports e configurações globais
│   ├── pages/               # Page Objects (*_page.robot - locators e keywords da tela)
│   └── shared/              # Keywords e setups compartilhados (setup.robot, comandos.robot)
├── library/                 # Bibliotecas Python customizadas (*.py)
└── results/                 # Logs e relatórios de execução (output.xml, log.html)
```

## 🚀 Como Executar os Testes

Os testes automatizados simulam a interação real do usuário no navegador. Para isso, os serviços de **Frontend** e **Backend** precisam estar em execução.

### 1. Pré-requisitos (Dependências)

Certifique-se de que a aplicação está rodando:
- **Frontend (Next.js):** Deve estar acessível em `http://localhost:3000/`
- **Backend (Django):** Deve estar acessível em `http://localhost:8000/`

*(Dica: Você pode subir a aplicação completa na raiz do repositório utilizando `docker compose --env-file backend/env/.env up --build -d`)*

### 2. Configurando o Ambiente Virtual Python (Windows)

Abra o terminal na pasta `e2e` e ative o ambiente virtual para garantir as dependências do Robot Framework:

```bash
cd e2e
.\venv\Scripts\activate
```

*(Nota: Caso seja o primeiro acesso e as bibliotecas não estejam instaladas, execute `pip install -r requirements.txt`, caso o arquivo exista, ou instale os pacotes principais `robotframework`, `robotframework-seleniumlibrary`, etc.)*

### 3. Executando a Suíte de Testes

Com o ambiente ativado e a aplicação rodando, execute o comando abaixo para rodar todos os testes na pasta `tests/` e salvar os relatórios na pasta `results/`:

```bash
robot -d results tests/
```

Para rodar um arquivo de teste específico (ex: `login.robot`):

```bash
robot -d results tests/01_perfil/login.robot
```

### 📊 Relatórios de Execução

Ao finalizar os testes, o Robot Framework gera automaticamente os seguintes arquivos na pasta `results/`:
- `log.html`: Visualização detalhada passo-a-passo da execução (Recomendado para análise de falhas).
- `report.html`: Resumo de alto nível dos cenários passados e falhos.
- `output.xml`: Resultados em formato XML (Útil para integrações CI/CD).
