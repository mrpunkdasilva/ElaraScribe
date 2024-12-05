# Banco de Dados

> Resource: [https://drive.google.com/file/d/1IfJADPBk8vBuoPQ7H7mxsLTCevSHhe98/view?usp=sharing](https://drive.google.com/file/d/1IfJADPBk8vBuoPQ7H7mxsLTCevSHhe98/view?usp=sharing)

## Diagrama Entidade Relacionamento
![DER.png](../images/MODELAGEM_DE_DADOS/DER.png)

## Modelo Entidade Relacionamento
![MER.png](../images/MODELAGEM_DE_DADOS/MER.png)

## Modelo Físico

### Tabela `USER`
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
### Tabela `ENSEMBLE`
- Tabela para armazenar informações sobre os conjuntos de flashcards
```sql
CREATE TABLE ENSEMBLE (
   ENSEMBLE_ID INT PRIMARY KEY,       -- Identificador único do conjunto
   NAME VARCHAR(100),                 -- Nome do conjunto
   DESCRIPTION TEXT,                  -- Descrição do conjunto
   COVER BLOB                         -- Capa ou imagem representando o conjunto
);
```
### Tabela `FLASHCARD`
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
### Tabela `FAVORITE`
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
### Tabela Pivo `FAVORITE_FLASCARD`
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
### Tabela Pivo`FLASHCARD_USAGE_HISTORY`
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
### Tabela Pivo`FLASHCARD_HISTORY_ITEMS`
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
### Tabela `TABLE_BOX`
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
### Tabela `BOX_FLASHCARD`
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
### Tabela `PURCHASE`
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
### Tabela Pivo`PURCHASE_BOX`
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
### Tabela `POMODORO_STORY`
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
### Tabela `LOGIN_SESSION`
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
