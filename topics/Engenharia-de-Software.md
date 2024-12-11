# Engenharia de Software

A engenharia de software é a abordagem sistemática para o desenvolvimento, operação e manutenção de sistemas de software. Nesse contexto, a organização da documentação técnica do nosso projeto é essencial para garantir a qualidade, a manutenibilidade e a evolução do sistema.

Como afirma Pressman (2010), "a documentação técnica é a espinha dorsal da engenharia de software, pois captura os requisitos, a arquitetura, a implementação e os procedimentos operacionais de um sistema".

<br/>

## Requisitos

### Requisitos Funcionais
| Requisito | Descrição                                                                                 | Prioridade | Caso de Uso |
|-----------|-------------------------------------------------------------------------------------------|------------|-------------|
| RF01      | O sistema deverá permitir o cadastro, edição e exclusão de usuários.                      | 1          | UC01        |
| RF02      | O sistema deverá permitir ao usuário logar e deslogar sua conta.                          | 2          | UC02, UC03  |
| RF03      | O sistema deverá permitir ao usuário iniciar, desativar e pausar o temporizador.          | 1          | UC04        |
| RF04      | O sistema deverá permitir realizar ao usuário as funções de criar e consultar o relatório dos pomodoros. | 3          | UC05        |
| RF05      | O sistema deverá permitir ao usuário realizar as funções de criar, editar, consultar e excluir flashcards. | 1          | UC06        |
| RF06      | O sistema deverá permitir ao usuário realizar as funções de adicionar e remover flashcards do histórico. | 2          | UC07        |
| RF07      | O sistema deverá permitir ao usuário realizar as funções de adicionar e remover flashcards dos favoritos. | 2          | UC08        |
| RF08      | O sistema deverá permitir ao usuário realizar as funções de criar, consultar, editar e excluir conjuntos dos flashcards. | 1          | UC09        |
| RF09      | O sistema deverá permitir ao usuário a compra de flashcards usando a moeda do sistema.    | 3          | UC10        |
| RF10      | O sistema deverá permitir a criação de box sells para venda dos flashcards.               | 1          | UC11        |
| RF11      | O sistema deverá permitir ao usuário a venda de flashcards.                               | 1          | UC12        |

<br/>

### Requisitos Não Funcionais
| Requisito | Descrição                                                                                   | Prioridade |
|-----------|---------------------------------------------------------------------------------------------|------------|
| RNF01     | O sistema deve ter uma interface responsiva e adaptável a diferentes tamanhos de tela.       | 1          |
| RNF02     | O sistema deve ter um design intuitivo e de fácil usabilidade.                               | 1          |
| RNF03     | O sistema deve ter um tempo de resposta rápido, mesmo com um grande número de usuários.       | 2          |
| RNF04     | O sistema deve garantir a segurança e privacidade dos dados dos usuários.                    | 1          |
| RNF05     | O sistema deve ser acessível, seguindo as diretrizes de acessibilidade web.                  | 2          |
| RNF06     | O sistema deve ser multiplataforma, funcionando em diferentes sistemas operacionais e dispositivos. | 2     |
| RNF07     | O sistema deve fornecer documentação clara e detalhada para os desenvolvedores.              | 3          |
| RNF08     | O sistema deve realizar backups automáticos diários para prevenir perda de dados.            | 3          |
| RNF09     | O sistema deve permitir integrações com APIs externas para funcionalidades adicionais.        | 3          |

<br/>
<br/>

## Arquitetura de Informação
A arquitetura de informação (AI) para a documentação de software do nosso projeto deve ser orientada a fornecer uma estrutura clara e intuitiva para organizar e disseminar o conhecimento técnico. Segundo Rosenfeld e Morville (2015), a AI "envolve a concepção da estrutura e da navegação de um espaço de informação para facilitar a execução de tarefas e o acesso ao conteúdo".

Essa estrutura de arquitetura de informação ajudará a garantir que a documentação do nosso projeto de software seja compreensível, acessível e eficaz para os desenvolvedores e outras partes interessadas.

<br/>
<br/>

### Wireframe

> Link para o Figma do projeto: https://www.figma.com/design/keAudUZHHInEkyf2bfl5ef/Flash-Pomo?node-id=0-1&t=EVf3oq7Mg9h7qvvg-1


<!-- Wireframes para a interface de cadastro -->
#### Wireframe de cadastro - Campo Username
Este wireframe apresenta o campo para o usuário inserir seu nome de usuário no formulário de cadastro.

![CADASTRO - 1 - USERNAME](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%201%20-%20USERNAME.svg)

<br />

#### Wireframe de cadastro - Campo Email
Este wireframe mostra o campo onde o usuário insere seu email no formulário de cadastro.

![CADASTRO - 1 - EMAIL](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%201%20-%20EMAIL.svg)

<br />

#### Wireframe de cadastro - Campo Senha
Este wireframe detalha o campo para o usuário criar sua senha no formulário de cadastro.

![CADASTRO - 1 - PASSWORD](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%201%20-%20PASSWORD.svg)

<br />

#### Wireframe de cadastro - Botão "Sign Up"
Este wireframe apresenta o botão de confirmação para finalizar o cadastro do usuário.

![CADASTRO - 1 - SIGN UP](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%201%20-%20SIGN%20UP.svg)

<br />

---

#### Wireframe de cadastro - Versão Mobile (Etapa 1)
Este wireframe exibe o design para a primeira etapa do cadastro em dispositivos móveis.

![CADASTRO - 1 - MOBILE](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%201%20-%20MOBILE.svg)

<br />

#### Wireframe de cadastro - Versão Mobile (Etapa 2)
Este wireframe exibe a segunda etapa do cadastro em dispositivos móveis.

![CADASTRO - 2 - MOBILE](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%202%20-%20MOBILE.svg)

<br />

#### Wireframe de cadastro - Versão Mobile (Etapa 3)
Este wireframe mostra a terceira etapa do cadastro em dispositivos móveis.

![CADASTRO - 3 - MOBILE](../images/WIREFRAMES/CADASTRO/CADASTRO%20-%203%20-%20MOBILE.svg)

<br />

---

<!-- Wireframes para a interface de login -->
#### Wireframe de login - Versão Desktop (Página Inicial)
Este wireframe apresenta a interface de login para usuários em dispositivos desktop.

![LOGIN - 1 - DESKTOP](../images/WIREFRAMES/LOGIN/LOGIN%20-%201%20-%20DESKTOP.svg)

<br />

#### Wireframe de login - Segurança
Este wireframe destaca a funcionalidade de segurança na interface de login.

![LOGIN - 1 - SECURITY](../images/WIREFRAMES/LOGIN/LOGIN%20-%201%20-%20SECURITY.svg)

<br />

---

#### Wireframe de login - Versão Mobile (Etapa 1)
Este wireframe ilustra a primeira etapa do login em dispositivos móveis.

![LOGIN - 2 - MOBILE](../images/WIREFRAMES/LOGIN/LOGIN%20-%202%20-%20MOBILE.svg)

<br />

#### Wireframe de login - Versão Mobile (Etapa 2)
Este wireframe apresenta a segunda etapa do login em dispositivos móveis.

![LOGIN - 3 - MOBILE](../images/WIREFRAMES/LOGIN/LOGIN%20-%203%20-%20MOBILE.svg)

<br />

---

<!-- Wireframes para a interface do usuário -->
#### Wireframe da interface - Painel do Usuário
Este wireframe apresenta o painel principal da interface do usuário.

![INTERFACE - USER - DASHBOARD](../images/WIREFRAMES/INTERFACE%20-%20USER%20-%20DASHBOARD.svg)

<br />

#### Wireframe da interface - Caixa principal no desktop
Este wireframe exibe o layout da caixa principal da interface para desktop.

![DESKTOP - USER - BOX SHELL](../images/WIREFRAMES/DESKTOP%20-%20USER%20-%20BOX%20SHELL.svg)

<br />

#### Wireframe da interface - Página "Contato"
Este wireframe ilustra a página de contato para suporte ao usuário.

![DESKTOP - USER - CONTACT US](../images/WIREFRAMES/DESKTOP%20-%20USER%20-%20CONTACT%20US.svg)

<br />

#### Wireframe da interface - Criando nova caixa
Este wireframe apresenta a interface para criar uma nova caixa na plataforma.

![DESKTOP - USER - CREATING BOX SHELL](../images/WIREFRAMES/DESKTOP%20-%20USER%20-%20CREATING%20BOX%20SHELL.svg)

<br />

#### Wireframe da interface - Página de Ajuda
Este wireframe mostra a interface da página de ajuda ao usuário.

![DESKTOP - USER - HELP](../images/WIREFRAMES/DESKTOP%20-%20USER%20-%20HELP.svg)

<br />

#### Wireframe da interface - Perfil do Usuário
Este wireframe apresenta o layout da página de perfil do usuário.

![DESKTOP - USER - USER PROFILE](../images/WIREFRAMES/DESKTOP%20-%20USER%20-%20USER%20PROFILE.svg)

<br />

---

<!-- Outros wireframes -->
#### Wireframe da interface - Compra de Caixa
Este wireframe ilustra a interface de compra de caixas.

![INTERFACE BOX BUY](../images/WIREFRAMES/INTERFACE%20BOX%20BUY.svg)

<br />

#### Wireframe da interface - Favoritos
Este wireframe apresenta a seção de conjuntos favoritos do usuário.

![INTERFACE FAVORITE  ENSEMBLES](../images/WIREFRAMES/INTERFACE%20FAVORITE%20%20ENSEMBLES.svg)

<br />

#### Wireframe da interface - Histórias
Este wireframe detalha a seção de histórias na interface do usuário.

![INTERFACE STORY](../images/WIREFRAMES/INTERFACE%20STORY.svg)


<br />
<br />

### Banco de Dados

> Resource: [https://drive.google.com/file/d/1IfJADPBk8vBuoPQ7H7mxsLTCevSHhe98/view?usp=sharing](https://drive.google.com/file/d/1IfJADPBk8vBuoPQ7H7mxsLTCevSHhe98/view?usp=sharing)

#### Diagrama Entidade Relacionamento
![DER.png](../images/MODELAGEM_DE_DADOS/DER.png)

#### Modelo Entidade Relacionamento
![MER.png](../images/MODELAGEM_DE_DADOS/MER.png)

#### Modelo Físico

##### Tabela `USER`
-- Tabela para armazenar informações dos usuários
```sql
CREATE TABLE USER (
   USER_ID INT PRIMARY KEY,           -- Identificador único do usuário
   NAME VARCHAR(200),                 -- Nome do usuário
   PASSWORD VARCHAR(90),              -- Senha do usuário para login
   EMAIL VARCHAR(150) UNIQUE,         -- Email único do usuário
   RULE VARCHAR(10),                  -- Função ou tipo de usuário
   AVATAR BLOB,                       -- Imagem ou avatar do usuário
   CREATED_AT TIMESTAMP,              -- Data e hora em que o usuário foi criado
   UPDATED_AT TIMESTAMP,              -- Data e hora da última atualização
   STATUS VARCHAR(10)                 -- Status do usuário
);
```
##### Tabela `ENSEMBLE`
- Tabela para armazenar informações sobre os conjuntos de flashcards
```sql
CREATE TABLE ENSEMBLE (
   ENSEMBLE_ID INT PRIMARY KEY,       -- Identificador único do conjunto
   NAME VARCHAR(100),                 -- Nome do conjunto
   DESCRIPTION TEXT,                  -- Descrição do conjunto
   COVER BLOB                         -- Capa ou imagem representando o conjunto
);
```
##### Tabela `FLASHCARD`
- Tabela para armazenar informações dos flashcards
```sql
CREATE TABLE FLASHCARD (
   FLASHCARD_ID INT PRIMARY KEY,      -- Identificador único do flashcard
   TITLE VARCHAR(150),                -- Título do flashcard
   CONTENT TEXT,                      -- Conteúdo ou descrição do flashcard
   CREATED_AT TIMESTAMP,              -- Data de criação do flashcard
   UPDATED_AT TIMESTAMP,              -- Data da última atualização do flashcard
   ENSEMBLE_ID INT,                   -- Identificador do conjunto de flashcards a que este flashcard pertence
   FOREIGN KEY (ENSEMBLE_ID) REFERENCES ENSEMBLE(ENSEMBLE_ID)  -- Relacionamento com o conjunto de flashcards
);
```
##### Tabela `FAVORITE`
- Tabela para armazenar informações sobre os favoritos dos usuários
```sql
CREATE TABLE FAVORITE (
   FAVORITE_ID INT PRIMARY KEY,       -- Identificador único do favorito
   FAVORITATION_DATE_TIMESTAMP TIMESTAMP, -- Data e hora em que o flashcard foi marcado como favorito
   STATUS BOOLEAN,                    -- Status do favorito (se está ativo ou não)
   USER_ID INT,                       -- Identificador do usuário que marcou o favorito
   FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) -- Relacionamento com o usuário
);
```
##### Tabela Pivo `FAVORITE_FLASCARD`
- Tabela para associar flashcards a favoritos
```sql
CREATE TABLE FAVORITE_FLASHCARD (
   FAVORITE_ID INT,                   -- Identificador do favorito
   FLASHCARD_ID INT,                  -- Identificador do flashcard
   PRIMARY KEY (FAVORITE_ID, FLASHCARD_ID), -- Chave composta para garantir que um flashcard não seja duplicado nos favoritos
   FOREIGN KEY (FLASHCARD_ID) REFERENCES FLASHCARD(FLASHCARD_ID), -- Relacionamento com o flashcard
   FOREIGN KEY (FAVORITE_ID) REFERENCES FAVORITE(FAVORITE_ID)   -- Relacionamento com o favorito
);
```
##### Tabela Pivo`FLASHCARD_USAGE_HISTORY`
- Tabela para armazenar o histórico de uso dos flashcards pelos usuários
```sql
CREATE TABLE FLASHCARD_USAGE_HISTORY (
   USAGE_HISTORY_ID INT PRIMARY KEY,  -- Identificador único do histórico de uso
   ACCESS_DATE TIMESTAMP,             -- Data e hora de acesso ao flashcard
   FLASHCARD_ID INT,                  -- Identificador do flashcard
   USER_ID INT,                       -- Identificador do usuário que acessou o flashcard
   FOREIGN KEY (FLASHCARD_ID) REFERENCES FLASHCARD(FLASHCARD_ID), -- Relacionamento com o flashcard
   FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) -- Relacionamento com o usuário
);
```
##### Tabela Pivo`FLASHCARD_HISTORY_ITEMS`
- Tabela para armazenar os itens do histórico de uso dos flashcards
```sql
CREATE TABLE FLASHCARD_HISTORY_ITEMS (
   USAGE_HISTORY_ID INT,              -- Identificador do histórico de uso
   FLASHCARD_ID INT,                  -- Identificador do flashcard
   PRIMARY KEY (USAGE_HISTORY_ID, FLASHCARD_ID), -- Chave composta para garantir a associação
   FOREIGN KEY (USAGE_HISTORY_ID) REFERENCES FLASHCARD_USAGE_HISTORY(USAGE_HISTORY_ID), -- Relacionamento com o histórico de uso
   FOREIGN KEY (FLASHCARD_ID) REFERENCES FLASHCARD(FLASHCARD_ID) -- Relacionamento com o flashcard
);
```
##### Tabela `TABLE_BOX`
- Tabela para armazenar as caixas de flashcards compradas pelos usuários
```sql
CREATE TABLE BOX (
   BOX_ID INT PRIMARY KEY,            -- Identificador único da caixa
   PRICE INT,                          -- Preço da caixa
   TITLE VARCHAR(120),                 -- Título da caixa
   COVER BLOB,                         -- Capa da caixa
   DESCRIPTION TEXT,                   -- Descrição da caixa
   STATUS BOOLEAN,                     -- Status da caixa (ativa, inativa, etc.)
   USER_ID INT,                        -- Identificador do usuário que comprou ou criou a caixa
   FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) -- Relacionamento com o usuário
);
```
##### Tabela `BOX_FLASHCARD`
- Tabela para associar flashcards a caixas
```sql
CREATE TABLE BOX_FLASHCARD (
   BOX_ID INT,                         -- Identificador da caixa
   FLASHCARD_ID INT,                   -- Identificador do flashcard
   PRIMARY KEY (BOX_ID, FLASHCARD_ID), -- Chave composta para garantir que um flashcard só apareça uma vez na caixa
   FOREIGN KEY (BOX_ID) REFERENCES BOX(BOX_ID), -- Relacionamento com a caixa
   FOREIGN KEY (FLASHCARD_ID) REFERENCES FLASHCARD(FLASHCARD_ID) -- Relacionamento com o flashcard
);
```
##### Tabela `PURCHASE`
- Tabela para registrar as compras realizadas pelos usuários
```sql
CREATE TABLE PURCHASE (
   EMAIL VARCHAR(150) UNIQUE,          -- Email único do usuário que fez a compra
   RULE VARCHAR(10),                   -- Função do usuário que fez a compra
   AVATAR BLOB,                        -- Avatar do usuário que fez a compra
   PURCHASE_ID INT PRIMARY KEY,        -- Identificador único da compra
   PURCHASE_DATE TIMESTAMP,            -- Data e hora da compra
   STATUS VARCHAR(20),                 -- Status da compra (pendente, concluída, etc.)
   AMOUNT INT,                          -- Quantidade de itens na compra
   USER_ID INT,                        -- Identificador do usuário que fez a compra
   FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) -- Relacionamento com o usuário
);
```
##### Tabela Pivo`PURCHASE_BOX`
- Tabela para associar caixas a compras
```sql
CREATE TABLE PURCHASE_BOX (
   PURCHASE_ID INT,                    -- Identificador da compra
   BOX_ID INT,                          -- Identificador da caixa comprada
   PRIMARY KEY (PURCHASE_ID, BOX_ID),   -- Chave composta para garantir que a mesma caixa não apareça mais de uma vez na mesma compra
   FOREIGN KEY (PURCHASE_ID) REFERENCES PURCHASE(PURCHASE_ID), -- Relacionamento com a compra
   FOREIGN KEY (BOX_ID) REFERENCES BOX(BOX_ID) -- Relacionamento com a caixa
);
```
##### Tabela `POMODORO_STORY`
- Tabela para registrar as sessões de pomodoro dos usuários:
```sql
CREATE TABLE POMODORO_STORY (
   POMODORO_STORY_ID INT PRIMARY KEY,   -- Identificador único da sessão de pomodoro
   START_DATE_TIMESTAMP TIMESTAMP,      -- Data e hora de início da sessão
   END_DATE_TIMESTAMP TIMESTAMP,        -- Data e hora de término da sessão
   USER_ID INT,                         -- Identificador do usuário que realizou a sessão
   FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) -- Relacionamento com o usuário
);
```
##### Tabela `LOGIN_SESSION`
- Tabela para registrar as sessões de login dos usuários:
```sql
CREATE TABLE LOGIN_SESSION (
   SESSION_ID INT PRIMARY KEY,          -- Identificador único da sessão de login
   DEVICE VARCHAR(100),                 -- Dispositivo usado para login
   LOGIN_DATE_TIMESTAMP TIMESTAMP,      -- Data e hora do login
   LOGOUT_DATE_TIMESTAMP TIMESTAMP,     -- Data e hora do logout
   IP_ADDRESS VARCHAR(255),             -- Endereço IP de onde o usuário fez login
   USER_ID INT,                         -- Identificador do usuário que fez login
   FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) -- Relacionamento com o usuário
);
```

<br/>
<br/>

## UML

A Unified Modeling Language (UML) é uma linguagem de modelagem visual padronizada amplamente utilizada na indústria de desenvolvimento de software. Conforme definido pela Object Management Group (OMG), "a UML fornece uma maneira padronizada de visualizar a estrutura e o comportamento de um sistema de software" (OMG, 2017).

De acordo com a especificação da OMG, "a UML é uma linguagem de modelagem visual unificada que permite aos desenvolvedores especificar, visualizar, construir e documentar os artefatos de um sistema de software" (OMG, 2017).

---

<br/>

### Diagrama de Casos de Uso

#### **UC01 - Gerenciar Usuário**

| **Nome**              | Gerenciar usuário.                                                                                      |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação e edição de contas de usuários.                            |
| **Fluxo de criação**  | 1. O usuário seleciona, na área de login, a opção "criar conta".<br/>2. O usuário preenche as informações requisitadas pelo sistema, como nome da conta, e-mail e senha.<br/>3. O usuário confirma a senha.<br/>4. O usuário aceita os termos de uso.<br/>5. O sistema valida os dados inseridos.<br/>6. O sistema cria a conta do usuário, exibindo uma mensagem de sucesso. |
| **Fluxo de edição**   | 1. O usuário seleciona o menu.<br/>2. O sistema exibe as opções de menu.<br/>3. O usuário seleciona "conta".<br/>4. O sistema mostra as informações da conta.<br/>5. O usuário seleciona a opção "editar conta".<br/>6. O usuário altera as informações permitidas, como nome ou imagem de perfil.<br/>7. O sistema valida as alterações.<br/>8. O sistema atualiza as informações da conta e exibe uma mensagem de sucesso. |
| **Ator**              | Usuário e Sistema                                                                                     |
| **Pré-condições**     | O usuário deve estar logado no sistema para editar a conta.                                            |
| **Pós-condições**     | Dados do usuário atualizados ou nova conta criada com sucesso.                                         |
| **Fluxo de Exceção**  | 1. Se o e-mail já estiver em uso, o sistema exibe uma mensagem indicando erro e solicita a correção.<br/>2. Se informações obrigatórias não forem preenchidas, o sistema exibe uma mensagem indicando os campos pendentes.<br/>3. O sistema não executa a ação até que todos os erros sejam corrigidos. |

<br/>

```mermaid
```
Imagem Caso de Uso UC01

---
<br/>
<br/>

#### **UC02 - Autenticar Usuário**

| **Nome**              | Autenticar usuário.                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pelo log in da conta de usuário.                                        |
| **Fluxo Entrar**      | 1. O usuário insere seu e-mail na página de login.<br/>2. O usuário insere sua senha na página de login.<br/>3. O sistema valida os dados inseridos.<br/>4. Caso os dados sejam válidos, o usuário é autenticado e redirecionado à página inicial. |
| **Ator**              | Usuário                                                                                               |
| **Pré-condições**     | O usuário deve estar registrado no sistema.                                                           |
| **Pós-condições**     | Entrada no sistema.                                                                                   |
| **Fluxo de Exceção**  | 1. Caso o e-mail não esteja registrado, o sistema exibe uma mensagem de erro.<br/>2. Caso a senha esteja incorreta, o sistema exibe uma mensagem indicando erro e solicita nova tentativa. |

![](UC02.png)
Imagem Caso de Uso UC02


---
<br/>
<br/>

#### **UC03 - Deslogar Usuário**

| **Nome**              | Deslogar usuário.                                                                                     |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pelo log out da conta de usuário.                                       |
| **Fluxo Sair**        | 1. O usuário pressiona no perfil do menu.<br/>2. O usuário pressiona o botão "log out".<br/>3. O sistema exibe um pop-up para confirmação.<br/>4. O usuário confirma o log out.<br/>5. O sistema encerra a sessão e redireciona o usuário para a página de login. |
| **Ator**              | Usuário                                                                                               |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Saída do sistema.                                                                                     |

![](UC03.png)
Imagem Caso de Uso UC03

---
<br/>
<br/>

#### **UC04 - Gerenciamento de Pomodoro**

| **Nome**              | Gerenciamento de Pomodoro                                                                             |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso descreve as funcionalidades de ativação, desativação, pausa e retomada do temporizador de Pomodoro no sistema. |
| **Fluxo de ativação**  | 1. O usuário acessa a funcionalidade de Pomodoro no sistema.<br/>2. O sistema verifica se o usuário está autenticado e tem acesso à funcionalidade.<br/>3. O sistema exibe a interface do temporizador de Pomodoro.<br/>4. O usuário clica no botão "Iniciar Pomodoro".<br/>5. O sistema ativa o temporizador, definindo a duração padrão (ex.: 25 minutos).<br/>6. O sistema inicia a contagem regressiva e exibe o tempo restante.<br/>7. Ao atingir o final do ciclo, o sistema emite um aviso sonoro.<br/>8. O sistema exibe uma mensagem informando a conclusão. |
| **Fluxo de pausa**     | 1. Durante um ciclo ativo, o usuário clica no botão "Pausar Pomodoro".<br/>2. O sistema interrompe a contagem regressiva.<br/>3. O sistema altera o estado para "Pausado".<br/>4. O usuário pode retomar ou parar o ciclo. |
| **Fluxo de retomada**  | 1. Durante um ciclo pausado, o usuário clica no botão "Retomar Pomodoro".<br/>2. O sistema verifica se há um ciclo em estado "Pausado".<br/>3. O sistema retoma a contagem regressiva.<br/>4. O sistema atualiza a interface.<br/>5. Ao atingir o final do ciclo, o sistema emite um aviso sonoro e exibe uma mensagem informando a conclusão. |

![](UC04.png)
Imagem Caso de Uso UC04

---
<br/>
<br/>

#### **UC05 - Gerenciar Relatório de Pomodoros**

| **Nome**              | Gerenciar Relatório de Pomodoros                                                                      |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação e consulta de relatórios dos Pomodoros.                   |
| **Fluxo de criação**  | 1. O usuário seleciona a opção “criar relatório de Pomodoro”.<br/>2. O usuário informa o período desejado (datas de início e fim).<br/>3. O sistema gera o relatório com base nos dados.<br/>4. O sistema valida os dados e exibe o relatório gerado.<br/>5. O usuário confirma o relatório. |
| **Fluxo de consulta** | 1. O usuário seleciona a opção “consultar relatório de Pomodoro”.<br/>2. O usuário informa o período desejado ou escolhe relatórios existentes.<br/>3. O sistema exibe o relatório solicitado.<br/>4. O usuário visualiza o relatório. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Relatório de Pomodoros criado ou consultado.                                                          |

![](UC05.png)
Imagem Caso de Uso UC05

---
<br/>
<br/>

#### **UC06 - Gerenciar Flashcards**


| **Nome**              | Gerenciar Flashcards                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação, edição e consulta de flashcards do usuário.              |
| **Fluxo de criação**  | 1. O usuário seleciona a opção de adicionar flashcards “+” logo abaixo do Pomodoro.<br/>2. O sistema exibe um formulário para que o usuário preencha as informações do novo flashcard.<br/>3. O usuário preenche as informações solicitadas.<br/>4. O usuário clica no botão "Salvar".<br/>5. O sistema valida as informações.<br/>6. Caso válidas, o sistema salva o novo flashcard.<br/>7. O sistema exibe uma mensagem de sucesso.<br/>8. O sistema atualiza a lista de flashcards do usuário. |
| **Fluxo de edição**   | 1. O usuário seleciona os três pontos do flashcard.<br/>2. O sistema exibe as opções de favoritar, editar ou excluir.<br/>3. O usuário seleciona a opção “editar”.<br/>4. O usuário preenche os novos dados do flashcard.<br/>5. O sistema valida as informações.<br/>6. Caso válidas, o flashcard é atualizado no banco de dados.<br/>7. O sistema exibe uma mensagem de sucesso.<br/>8. O sistema atualiza a lista de flashcards do usuário. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração da lista de flashcards do usuário.                                                          |


![](UC06.png)
Imagem Caso de Uso UC06

---
<br/>
<br/>

#### **UC07 - Gerenciar Histórico dos Flashcards**


| **Nome**              | Gerenciar Histórico dos Flashcards                                                                    |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela adição e remoção de flashcards do histórico.                      |
| **Fluxo principal**   | 1. O usuário seleciona um flashcard.<br/>2. O sistema adiciona o flashcard no histórico.<br/>3. O sistema organiza os flashcards conforme a ordem de acesso. |
| **Fluxo de remoção**  | 1. O usuário seleciona a opção “menu”.<br/>2. O sistema exibe as opções de menu.<br/>3. O usuário seleciona a opção “flashcards”.<br/>4. O usuário acessa a interface de gerenciamento de flashcards.<br/>5. O usuário seleciona a opção “Histórico”.<br/>6. O usuário seleciona o flashcard correspondente.<br/>7. O usuário seleciona a opção “Remover do Histórico”.<br/>8. O sistema exibe uma mensagem de confirmação.<br/>9. Caso o usuário confirme, o sistema remove o flashcard do histórico. Caso contrário, volta à tela anterior. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração no histórico de flashcards do usuário.                                                     |

![](UC07.png)
Imagem Caso de Uso UC07

---
<br/>
<br/>


#### **UC08 - Gerenciar Favoritos**

| **Nome**              | Gerenciar Favoritos                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela adição e remoção de flashcards dos favoritos.                     |
| **Fluxo de favoritar** | 1. O usuário seleciona os três pontos no quadrado do flashcard específico.<br/>2. O sistema exibe as opções de favoritar, editar ou excluir.<br/>3. O usuário seleciona a opção “favoritar”. |
| **Fluxo de desfavoritar** | 1. O usuário seleciona os três pontos no quadrado do flashcard específico.<br/>2. O sistema exibe as opções de favoritar, editar ou excluir.<br/>3. O usuário seleciona a opção “desfavoritar”. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração na lista de favoritos do usuário.                                                          |

![](UC08.png)
Imagem Caso de Uso UC08

---
<br/>
<br/>

#### **UC09 - Gerenciar Conjuntos de Flashcards**

| **Nome**              | Gerenciar Conjuntos                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação, consulta, edição e exclusão das categorias de flashcards. |
| **Fluxo de criação**  | 1. O usuário seleciona a opção de criar conjunto “+ com uma pasta” logo abaixo do Pomodoro.<br/>2. O sistema exibe um formulário para que o usuário preencha o nome, descrição e cor do novo conjunto.<br/>3. O usuário preenche os requisitos.<br/>4. O usuário confirma a criação do conjunto.<br/>5. O sistema valida as informações.<br/>6. O sistema atualiza as informações e adiciona o novo conjunto. |
| **Fluxo de consulta** | 1. O usuário seleciona a lupa na parte dos conjuntos.<br/>2. O sistema abre um campo de texto para escrita.<br/>3. O usuário digita o nome do conjunto desejado.<br/>4. O usuário confirma a pesquisa.<br/>5. O sistema mostra os conjuntos que correspondem à pesquisa. |
| **Fluxo de edição**   | 1. O usuário seleciona a opção “ver mais” logo abaixo dos conjuntos.<br/>2. O sistema exibe um modal com todos os conjuntos.<br/>3. O usuário seleciona os três pontos de um conjunto.<br/>4. O sistema exibe as opções de editar ou excluir.<br/>5. O usuário escolhe “editar”.<br/>6. O sistema exibe o conjunto com opções para alterar flashcards, nome, descrição ou cor.<br/>7. O usuário confirma as alterações.<br/>8. O sistema valida e atualiza o conjunto no banco de dados. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Criar, consultar, editar ou excluir as categorias dos flashcards.                                     |

![](UC09.png)
Imagem Caso de Uso UC09

---
<br/>
<br/>


#### **UC10 - Comprar Flashcards**

| **Nome**              | Comprar Flashcards                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela compra de flashcards usando a moeda do sistema.                  |
| **Fluxo de Compra**   | 1. O usuário acessa a interface da loja.<br/>2. O sistema exibe uma lista de flashcards disponíveis para compra, com filtros por categoria e preço.<br/>3. O usuário seleciona o flashcard desejado.<br/>4. O sistema verifica se o usuário possui saldo suficiente.<br/>5. Caso tenha saldo, o sistema exibe uma mensagem de confirmação.<br/>6. O usuário confirma a compra.<br/>7. O sistema atualiza a lista de flashcards do usuário e debita o saldo da conta.<br/>8. O sistema exibe o flashcard comprado ao usuário. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema e possuir saldo suficiente.                                    |
| **Pós-condições**     | Alteração no saldo e atualização da lista de flashcards do usuário.                                  |

![](UC10.png)
Imagem Caso de Uso UC10

---
<br/>
<br/>


#### **UC11 - Gerenciar Box Sells**

| **Nome**              | Gerenciamento de Box Sells                                                                             |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação, edição e exclusão de Box Sells.                          |
| **Fluxo de criação**  | 1. O usuário acessa a interface de gerenciamento de Box Sells.<br/>2. O usuário seleciona a opção “Criar Box Sell”.<br/>3. O sistema solicita ao usuário que defina um nome e uma descrição.<br/>4. O usuário escolhe os flashcards a serem incluídos.<br/>5. O sistema exibe um resumo da Box Sell com os flashcards selecionados.<br/>6. O usuário define o preço de venda.<br/>7. O usuário confirma a criação.<br/>8. O sistema adiciona a Box Sell à loja e à lista de vendas disponíveis. |
| **Fluxo de edição**   | 1. O usuário acessa a interface de gerenciamento de Box Sells.<br/>2. O usuário seleciona a Box Sell que deseja editar.<br/>3. O sistema exibe os detalhes da Box Sell.<br/>4. O usuário altera nome, descrição ou flashcards incluídos.<br/>5. O usuário confirma as alterações.<br/>6. O sistema valida e atualiza a Box Sell no banco de dados. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema e ter permissões para gerenciar Box Sells.                     |
| **Pós-condições**     | Alteração na lista de Box Sells disponíveis e no banco de dados.                                      |

![](UC11.png)
Imagem Caso de Uso UC11

---

<br/>
<br/>

#### **UC12 - Vender Flashcards**

| **Nome**              | Vender Flashcards                                                                                     |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela venda de flashcards usando a moeda do sistema.                   |
| **Fluxo de Venda**    | 1. O usuário acessa a interface da loja.<br/>2. O usuário seleciona a opção “Venda de Flashcards”.<br/>3. O usuário escolhe o flashcard a ser vendido.<br/>4. O usuário define o valor da venda em moedas do sistema.<br/>5. O usuário confirma a venda.<br/>6. O sistema lista o flashcard para outros usuários.<br/>7. Quando vendido, o sistema credita o valor na conta do usuário e remove o flashcard. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração no saldo e na lista de flashcards do usuário.                                              |

![](UC12.png)
Imagem Caso de Uso UC12

<br/>
<br/>

---
### Diagrama de Classes
O diagrama de classes representa a estrutura do sistema, detalhando as principais entidades e seus relacionamentos. Cada classe é projetada para capturar um conjunto de informações sobre um conceito específico, e os métodos listados permitem a manipulação e o acesso a esses dados.

O diagrama de classes representa a estrutura do sistema, detalhando as principais entidades e seus relacionamentos. Cada classe é projetada para capturar um conjunto de informações sobre um conceito específico, e os métodos listados permitem a manipulação e o acesso a esses dados.

- **Box**: Representa uma "caixa" no sistema, com atributos como preço, título, descrição e imagem de capa. Um usuário pode possuir várias caixas, e os métodos fornecem acesso e modificação dos atributos da classe, como `getPrice()`, `setPrice()`, `getTitle()`, entre outros.

- **Ensemble**: Representa um "conjunto" com atributos como nome, descrição e imagem de capa. A classe tem métodos para acessar e modificar esses atributos e está associada a um único usuário, que pode possuir vários ensembles.

- **PomodoroStory**: Reflete uma história de sessão Pomodoro, contendo os timestamps de início e fim. Um usuário pode realizar várias sessões Pomodoro, e os métodos `getStartDateTimestamp()` e `setStartDateTimestamp()` permitem acessar e definir esses valores.

- **Purchase**: Relacionada às compras feitas pelos usuários, com informações sobre o valor, data e status da compra. A classe também permite acessar e modificar esses atributos, como `getAmount()`, `setAmount()`, `getStatus()`, e está associada a um único usuário.

- **User**: Representa o usuário do sistema, com atributos como `userId`, `username` e `email`. Ele pode estar relacionado a várias instâncias das outras classes (Box, Ensemble, PomodoroStory e Purchase).

**Relacionamentos**:

- **Box** e **Ensemble** possuem um relacionamento de **muitos para um** com **User**, ou seja, um usuário pode ter várias caixas e ensembles.
- **PomodoroStory** e **Purchase** também possuem um relacionamento de **muitos para um** com **User**, representando as sessões Pomodoro e as compras feitas por um usuário.

```mermaid
classDiagram
    class Box {
        +Integer boxId
        +Integer price
        +String title
        +byte[] cover
        +String description
        +Boolean status
        +getBoxId() Integer
        +setBoxId(Integer)
        +getPrice() Integer
        +setPrice(Integer)
        +getTitle() String
        +setTitle(String)
        +getCover() byte[]
        +setCover(byte[])
        +getDescription() String
        +setDescription(String)
        +getStatus() Boolean
        +setStatus(Boolean)
    }

    class Ensemble {
        +Integer id
        +String name
        +String description
        +byte[] cover
        +boolean status
        +getId() Integer
        +setId(Integer)
        +getName() String
        +setName(String)
        +getDescription() String
        +setDescription(String)
        +getCover() byte[]
        +setCover(byte[])
        +getStatus() boolean
        +setStatus(boolean)
    }

    class PomodoroStory {
        +Integer pomodoroStoryId
        +LocalDateTime startDateTimestamp
        +LocalDateTime endDateTimestamp
        +getPomodoroStoryId() Integer
        +setPomodoroStoryId(Integer)
        +getStartDateTimestamp() LocalDateTime
        +setStartDateTimestamp(LocalDateTime)
        +getEndDateTimestamp() LocalDateTime
        +setEndDateTimestamp(LocalDateTime)
    }

    class Purchase {
        +Integer purchaseId
        +LocalDateTime purchaseDate
        +String status
        +Integer amount
        +getPurchaseId() Integer
        +setPurchaseId(Integer)
        +getPurchaseDate() LocalDateTime
        +setPurchaseDate(LocalDateTime)
        +getStatus() String
        +setStatus(String)
        +getAmount() Integer
        +setAmount(Integer)
    }

    class User {
        +Integer userId
        +String username
        +String email
        +getUserId() Integer
        +setUserId(Integer)
        +getUsername() String
        +setUsername(String)
        +getEmail() String
        +setEmail(String)
    }

    Box --> "1" User : possui
    Ensemble --> "1" User : possui
    PomodoroStory --> "1" User : executa
    Purchase --> "1" User : feito por
```

---

<br/>
<br/>

### Diagramas de Sequência

<br/>

#### Diagrama de Sequencia UC-01

#### Criação da conta

```mermaid
sequenceDiagram
    actor Usuario as  Usuario
    participant FrontEnd as FrontEnd
    participant BackEnd as BackEnd
    participant Database as Database

    Usuario->>FrontEnd: Seleciona a opção "Criar conta"
    FrontEnd->>Usuario: Exibe tela de cadastro
    Usuario->>FrontEnd: Preenche as informações (nome, email, senha)
    Usuario->>FrontEnd: Confirma a senha
    Usuario->>FrontEnd: Aceita os termos de uso
    FrontEnd->>BackEnd: Envia dados de cadastro
    BackEnd->>Database: Valida se e-mail já está em uso
    Database-->>BackEnd: Retorna resultado da validação
    BackEnd->>FrontEnd: Valida os dados inseridos
    alt Fluxo de Exceção - E-mail já em uso
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro e solicita correção
    else Fluxo de Exceção - Informações obrigatórias não preenchidas
        BackEnd->>FrontEnd: Envia mensagem de campos pendentes
        FrontEnd->>Usuario: Exibe mensagem indicando os campos pendentes
        FrontEnd->>BackEnd: Não envia dados até que os erros sejam corrigidos
    else Fluxo Principal
        Database->>BackEnd: Cria nova conta de usuário
        BackEnd->>FrontEnd: Envia confirmação de conta criada
        FrontEnd->>Usuario: Exibe mensagem de sucesso
    end
```

<br/>

#### Edição da conta
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd 
    participant Database

    Usuario->>FrontEnd: Seleciona a opção "Conta"
    FrontEnd->>BackEnd: Solicita informações da conta
    BackEnd->>Database: Busca dados da conta do usuário
    Database-->>BackEnd: Retorna informações da conta
    BackEnd->>FrontEnd: Envia informações da conta
    FrontEnd->>Usuario: Mostra as informações da conta

    Usuario->>FrontEnd: Seleciona a opção "Editar conta"
    Usuario->>FrontEnd: Altera as informações permitidas (nome)
    FrontEnd->>BackEnd: Envia dados atualizados da conta
    BackEnd->>Database: Atualiza as informações da conta
    alt Fluxo de Exceção - Informações inválidas
        Database-->>BackEnd: Retorna erro de atualização
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro e solicita correção
    else Fluxo Principal
        Database-->>BackEnd: Confirma atualização
        BackEnd->>FrontEnd: Envia confirmação de atualização
        FrontEnd->>Usuario: Exibe mensagem de sucesso
    end
```

<br/>

#### Exclusão da conta
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant Database

    Usuario->>FrontEnd: Seleciona a opção "Excluir conta"
    FrontEnd->>Usuario: Exibe confirmação de exclusão
    Usuario->>FrontEnd: Confirma a exclusão
    FrontEnd->>BackEnd: Envia solicitação de exclusão de conta
    BackEnd->>Database: Deleta a conta do usuário
    alt Fluxo de Exceção - Falha na exclusão
        Database-->>BackEnd: Retorna erro de exclusão
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro
    else Fluxo Principal
        Database-->>BackEnd: Confirma exclusão
        BackEnd->>FrontEnd: Envia confirmação de exclusão
        FrontEnd->>Usuario: Exibe mensagem de conta excluída
    end
```

<br/>
<br/>

### Diagrama de Sequencia : UC-02

#### Entrada no Sistema
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Acessa a página de login
    FrontEnd->>Usuario: Exibe a página de login
    Usuario->>FrontEnd: Preenche e-mail e senha
    Usuario->>FrontEnd: Clica no botão "Entrar"
    FrontEnd->>BackEnd: Envia requisição de login
    BackEnd->>BancoDeDados: Verifica as credenciais
    alt Credenciais válidas
        BancoDeDados->>BackEnd: Retorna informações do usuário
        BackEnd->>FrontEnd: Autentica o usuário
        FrontEnd->>Usuario: Redireciona para a página inicial
    else Credenciais inválidas
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro
        Usuario->>FrontEnd: Tenta novamente o login
    end
```

<br/>
<br/>

### Diagrama de Sequencia : UC-03

#### Saida do Sistema
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd

    Usuario->>FrontEnd: Clica no botão "Sair"
    FrontEnd->>Usuario: Exibe confirmação de logout
    Usuario->>FrontEnd: Confirma o logout    
    BackEnd->>FrontEnd: Finaliza a sessão do usuário
    FrontEnd->>Usuario: Redireciona para a página de login
```


<br/>
<br/>


### Diagrama de Sequencia : UC-04

#### Ativação do Pomodoro
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd

    Usuario->>FrontEnd: Clica no botão "Iniciar Pomodoro"
    FrontEnd->>BackEnd: Envia requisição de iniciar Pomodoro
    BackEnd->>FrontEnd: Inicia o temporizador de 25 minutos
    FrontEnd->>Usuario: Exibe a contagem regressiva
    Usuario->>FrontEnd: Aguarda o término do temporizador
    FrontEnd->>Usuario: Toca um sinal sonoro
    FrontEnd->>Usuario: Exibe mensagem de intervalo de 5 minutos
    Usuario->>FrontEnd: Aguarda o término do intervalo
    FrontEnd->>Usuario: Toca um sinal sonoro
    FrontEnd->>BackEnd: Envia requisição de retornar ao Pomodoro
    BackEnd->>FrontEnd: Retorna ao modo de Pomodoro
```

<br/>

#### Desativação do Pomodoro
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd

    Usuario->>FrontEnd: Clica no botão "Parar Pomodoro"
    FrontEnd->>Usuario: Exibe confirmação de interrupção
    Usuario->>FrontEnd: Confirma a interrupção
    FrontEnd->>BackEnd: Envia requisição de parar Pomodoro
    BackEnd->>FrontEnd: Interrompe o temporizador
    FrontEnd->>Usuario: Exibe resumo da sessão de Pomodoro
```

<br/>

#### Pausa do Pomodoro    
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd

    Usuario->>FrontEnd: Clica no botão "Parar Pomodoro"
    FrontEnd->>Usuario: Exibe confirmação de interrupção
    Usuario->>FrontEnd: Confirma a interrupção
    FrontEnd->>BackEnd: Envia requisição de parar Pomodoro
    BackEnd->>FrontEnd: Interrompe o temporizador
    FrontEnd->>Usuario: Exibe resumo da sessão de Pomodoro
```

### Diagrama de Sequencia : UC-05

#### Consulta do Relatórios 
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Relatórios"
    FrontEnd->>BackEnd: Envia requisição de obter relatórios
    BackEnd->>BancoDeDados: Consulta os dados para os relatórios
    BancoDeDados->>BackEnd: Retorna os dados dos relatórios
    alt Dados encontrados
        BackEnd->>FrontEnd: Envia os dados dos relatórios
        FrontEnd->>Usuario: Exibe os relatórios
    else Dados não encontrados
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro
    end
```

<br/>

#### Criação dos Relatórios
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Clica em "Criar Relatório"
    FrontEnd->>Usuario: Exibe o formulário de criação de relatório
    Usuario->>FrontEnd: Preenche as informações do relatório
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de criar relatório
    BackEnd->>BancoDeDados: Armazena as informações do relatório
    alt Armazenamento bem-sucedido
        BancoDeDados->>BackEnd: Confirma o armazenamento
        BackEnd->>FrontEnd: Envia a confirmação de criação
        FrontEnd->>Usuario: Exibe a confirmação de criação do relatório
    else Armazenamento falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>
<br/>

### Diagrama de Sequencia : UC-06

#### Criação dos Flashcards
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Clica em "Criar Flashcard"
    FrontEnd->>Usuario: Exibe o formulário de criação de flashcard
    Usuario->>FrontEnd: Preenche as informações do flashcard
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de criar flashcard
    BackEnd->>BancoDeDados: Armazena as informações do flashcard
    alt Armazenamento bem-sucedido
        BancoDeDados->>BackEnd: Confirma o armazenamento
        BackEnd->>FrontEnd: Envia a confirmação de criação
        FrontEnd->>Usuario: Exibe a confirmação de criação do flashcard
    else Armazenamento falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>

#### Consulta dos Flashcards
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Flashcards"
    FrontEnd->>BackEnd: Envia requisição de obter flashcards
    BackEnd->>BancoDeDados: Consulta os flashcards
    alt Flashcards encontrados
        BancoDeDados->>BackEnd: Retorna os flashcards
        BackEnd->>FrontEnd: Envia os flashcards
        FrontEnd->>Usuario: Exibe os flashcards
    else Flashcards não encontrados
        BancoDeDados->>BackEnd: Retorna mensagem de erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro
    end
```

<br/>

#### Exclusão dos Flashcards
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um flashcard para excluir
    FrontEnd->>Usuario: Exibe a confirmação de exclusão
    Usuario->>FrontEnd: Confirma a exclusão
    FrontEnd->>BackEnd: Envia a requisição de excluir o flashcard
    BackEnd->>BancoDeDados: Deleta o flashcard
    alt Exclusão bem-sucedida
        BancoDeDados->>BackEnd: Confirma a exclusão
        BackEnd->>FrontEnd: Envia a confirmação de exclusão
        FrontEnd->>Usuario: Exibe a confirmação de exclusão
    else Exclusão falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>

#### Edição dos Flashcards
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um flashcard para editar
    FrontEnd->>Usuario: Exibe o formulário de edição do flashcard
    Usuario->>FrontEnd: Modifica as informações do flashcard
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de atualizar o flashcard
    BackEnd->>BancoDeDados: Atualiza as informações do flashcard
    alt Atualização bem-sucedida
        BancoDeDados->>BackEnd: Confirma a atualização
        BackEnd->>FrontEnd: Envia a confirmação de atualização
        FrontEnd->>Usuario: Exibe a confirmação de atualização
    else Atualização falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>
<br/>


### Diagrama de Sequencia : UC-07

#### Remoção do Histórico dos Flashcards
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Histórico de Flashcards"
    FrontEnd->>BackEnd: Envia requisição de obter o histórico de flashcards
    BackEnd->>BancoDeDados: Consulta o histórico de flashcards
    BancoDeDados->>BackEnd: Retorna o histórico de flashcards
    BackEnd->>FrontEnd: Envia o histórico de flashcards
    FrontEnd->>Usuario: Exibe o histórico de flashcards

    Usuario->>FrontEnd: Seleciona a opção de "Limpar Histórico"
    FrontEnd->>BackEnd: Envia requisição de remover o histórico de flashcards
    BackEnd->>BancoDeDados: Deleta o histórico de flashcards
    alt Remoção bem-sucedida
        BancoDeDados->>BackEnd: Confirma a remoção
        BackEnd->>FrontEnd: Envia confirmação de remoção do histórico
        FrontEnd->>Usuario: Exibe confirmação de remoção do histórico
    else Remoção falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe mensagem de erro
    end
```

<br/>

#### Seleção de um Flashcard do Histórico 
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Histórico de Flashcards"
    FrontEnd->>BackEnd: Envia requisição de obter o histórico de flashcards
    BackEnd->>BancoDeDados: Consulta o histórico de flashcards
    BancoDeDados->>BackEnd: Retorna o histórico de flashcards
    BackEnd->>FrontEnd: Envia o histórico de flashcards
    FrontEnd->>Usuario: Exibe o histórico de flashcards

    Usuario->>FrontEnd: Seleciona um flashcard do histórico
    FrontEnd->>BackEnd: Envia requisição de obter detalhes do flashcard
    BackEnd->>BancoDeDados: Consulta os detalhes do flashcard
    BancoDeDados->>BackEnd: Retorna os detalhes do flashcard
    BackEnd->>FrontEnd: Envia os detalhes do flashcard
    FrontEnd->>Usuario: Exibe os detalhes do flashcard selecionado
```

<br/>
<br/>

### Diagrama de Sequencia : UC-08

#### Desfavoritar Flashcard dos Favoritos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um flashcard dos Favoritos
    FrontEnd->>Usuario: Exibe a opção de "Desfavoritar"
    Usuario->>FrontEnd: Seleciona a opção de "Desfavoritar"
    FrontEnd->>BackEnd: Envia a requisição de desfavoritar o flashcard
    BackEnd->>BancoDeDados: Atualiza o status do flashcard como não favorito
    alt Desfavoritação bem-sucedida
        BancoDeDados->>BackEnd: Confirma a atualização
        BackEnd->>FrontEnd: Envia a confirmação de desfavoritação
        FrontEnd->>Usuario: Exibe a confirmação de desfavoritação
    else Desfavoritação falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>

#### Favoritar Flashcard dos Favoritos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um flashcard que não está nos Favoritos
    FrontEnd->>Usuario: Exibe a opção de "Favoritar"
    Usuario->>FrontEnd: Seleciona a opção de "Favoritar"
    FrontEnd->>BackEnd: Envia a requisição de favoritar o flashcard
    BackEnd->>BancoDeDados: Atualiza o status do flashcard como favorito
    alt Favoritação bem-sucedida
        BancoDeDados->>BackEnd: Confirma a atualização
        BackEnd->>FrontEnd: Envia a confirmação de favoritação
        FrontEnd->>Usuario: Exibe a confirmação de favoritação
    else Favoritação falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>
<br/>

### Diagrama de Sequencia : UC-09

#### 1 Tipo de Consulta dos Conjuntos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Conjuntos"
    FrontEnd->>BackEnd: Envia requisição de obter todos os conjuntos
    BackEnd->>BancoDeDados: Consulta todos os conjuntos
    BancoDeDados->>BackEnd: Retorna a lista de todos os conjuntos
    BackEnd->>FrontEnd: Envia a lista de conjuntos
    FrontEnd->>Usuario: Exibe a lista de conjuntos
```

<br/>

#### 2 Tipo de Consulta dos Conjuntos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um filtro para consultar conjuntos
    FrontEnd->>BackEnd: Envia requisição de obter conjuntos filtrados
    BackEnd->>BancoDeDados: Consulta os conjuntos com o filtro aplicado
    BancoDeDados->>BackEnd: Retorna a lista de conjuntos filtrados
    BackEnd->>FrontEnd: Envia a lista de conjuntos filtrados
    FrontEnd->>Usuario: Exibe a lista de conjuntos filtrados
```

<br/>

#### Criação dos Conjuntos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Clica em "Criar Conjunto"
    FrontEnd->>Usuario: Exibe o formulário de criação de conjunto
    Usuario->>FrontEnd: Preenche as informações do conjunto
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de criar conjunto
    BackEnd->>BancoDeDados: Armazena as informações do conjunto
    alt Criação bem-sucedida
        BancoDeDados->>BackEnd: Confirma a criação
        BackEnd->>FrontEnd: Envia a confirmação de criação
        FrontEnd->>Usuario: Exibe a confirmação de criação do conjunto
    else Criação falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>

#### Edição dos Conjuntos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um conjunto para editar
    FrontEnd->>BackEnd: Envia requisição de obter detalhes do conjunto
    BackEnd->>BancoDeDados: Consulta os detalhes do conjunto
    BancoDeDados->>BackEnd: Retorna os detalhes do conjunto
    BackEnd->>FrontEnd: Envia os detalhes do conjunto
    FrontEnd->>Usuario: Exibe o formulário de edição do conjunto

    Usuario->>FrontEnd: Modifica as informações do conjunto
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de atualizar o conjunto
    BackEnd->>BancoDeDados: Atualiza as informações do conjunto
    alt Atualização bem-sucedida
        BancoDeDados->>BackEnd: Confirma a atualização
        BackEnd->>FrontEnd: Envia a confirmação de atualização
        FrontEnd->>Usuario: Exibe a confirmação de atualização
    else Atualização falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>

#### Exclusão dos Conjuntos
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona um conjunto para excluir
    FrontEnd->>Usuario: Exibe a confirmação de exclusão
    Usuario->>FrontEnd: Confirma a exclusão
    FrontEnd->>BackEnd: Envia a requisição de excluir o conjunto
    BackEnd->>BancoDeDados: Deleta o conjunto
    alt Exclusão bem-sucedida
        BancoDeDados->>BackEnd: Confirma a exclusão
        BackEnd->>FrontEnd: Envia a confirmação de exclusão
        FrontEnd->>Usuario: Exibe a confirmação de exclusão
    else Exclusão falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>
<br/>

### Diagrama de Sequencia : UC-10
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Novo Flashcard"
    FrontEnd->>Usuario: Exibe o formulário de criação de flashcard

    Usuario->>FrontEnd: Preenche as informações do flashcard
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de criar novo flashcard
    BackEnd->>BancoDeDados: Armazena as informações do novo flashcard
    alt Criação bem-sucedida
        BancoDeDados->>BackEnd: Confirma a criação
        BackEnd->>FrontEnd: Envia a confirmação de criação
        FrontEnd->>Usuario: Exibe a confirmação de criação do flashcard
    else Criação falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end

    Usuario->>FrontEnd: Seleciona a opção de "Voltar"
    FrontEnd->>Usuario: Retorna à tela anterior
```

<br/>
<br/>

### Diagrama de Sequencia : UC-11

#### Criação das Box Sells
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Nova Box Sell"
    FrontEnd->>Usuario: Exibe o formulário de criação de Box Sell

    Usuario->>FrontEnd: Preenche as informações da Box Sell
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de criar nova Box Sell
    BackEnd->>BancoDeDados: Armazena as informações da nova Box Sell
    alt Criação bem-sucedida
        BancoDeDados->>BackEnd: Confirma a criação
        BackEnd->>FrontEnd: Envia a confirmação de criação
        FrontEnd->>Usuario: Exibe a confirmação de criação da Box Sell
    else Criação falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end

    Usuario->>FrontEnd: Seleciona a opção de "Voltar"
    FrontEnd->>Usuario: Retorna à tela anterior
```

<br/>

#### Edição das Box Sells
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona uma Box Sell para editar
    FrontEnd->>BackEnd: Envia requisição de obter detalhes da Box Sell
    BackEnd->>BancoDeDados: Consulta os detalhes da Box Sell
    BancoDeDados->>BackEnd: Retorna os detalhes da Box Sell
    BackEnd->>FrontEnd: Envia os detalhes da Box Sell
    FrontEnd->>Usuario: Exibe o formulário de edição da Box Sell

    Usuario->>FrontEnd: Modifica as informações da Box Sell
    Usuario->>FrontEnd: Clica em "Salvar"
    FrontEnd->>BackEnd: Envia a requisição de atualizar a Box Sell
    BackEnd->>BancoDeDados: Atualiza as informações da Box Sell
    alt Atualização bem-sucedida
        BancoDeDados->>BackEnd: Confirma a atualização
        BackEnd->>FrontEnd: Envia a confirmação de atualização
        FrontEnd->>Usuario: Exibe a confirmação de atualização
    else Atualização falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```

<br/>

#### Exclusão das Box Sells
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona uma Box Sell para excluir
    FrontEnd->>Usuario: Exibe a confirmação de exclusão
    Usuario->>FrontEnd: Confirma a exclusão
    FrontEnd->>BackEnd: Envia a requisição de excluir a Box Sell
    BackEnd->>BancoDeDados: Deleta a Box Sell
    alt Exclusão bem-sucedida
        BancoDeDados->>BackEnd: Confirma a exclusão
        BackEnd->>FrontEnd: Envia a confirmação de exclusão
        FrontEnd->>Usuario: Exibe a confirmação de exclusão
    else Exclusão falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```


<br/>

### Diagrama de Sequencia : UC-12

#### Venda das Box Sells
```mermaid
sequenceDiagram
    actor Usuario
    participant FrontEnd
    participant BackEnd
    participant BancoDeDados

    Usuario->>FrontEnd: Seleciona a opção de "Vender Box Sells"
    FrontEnd->>BackEnd: Envia requisição de obter as Box Sells disponíveis
    BackEnd->>BancoDeDados: Consulta as Box Sells disponíveis
    BancoDeDados->>BackEnd: Retorna a lista de Box Sells disponíveis
    BackEnd->>FrontEnd: Envia a lista de Box Sells disponíveis
    FrontEnd->>Usuario: Exibe a lista de Box Sells disponíveis

    Usuario->>FrontEnd: Seleciona as Box Sells a serem vendidas
    Usuario->>FrontEnd: Clica em "Finalizar Venda"
    FrontEnd->>BackEnd: Envia a requisição de registrar a venda
    BackEnd->>BancoDeDados: Atualiza o status das Box Sells como vendidas
    alt Venda bem-sucedida
        BancoDeDados->>BackEnd: Confirma a venda
        BackEnd->>FrontEnd: Envia a confirmação da venda
        FrontEnd->>Usuario: Exibe a confirmação da venda
    else Venda falhou
        BancoDeDados->>BackEnd: Retorna erro
        BackEnd->>FrontEnd: Envia mensagem de erro
        FrontEnd->>Usuario: Exibe a mensagem de erro
    end
```