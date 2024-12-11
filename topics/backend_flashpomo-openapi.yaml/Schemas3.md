# Schemas

A seção de Schemas da API é uma parte essencial da documentação, pois ela define os formatos de dados esperados pelos diferentes endpoints da nossa API.

Os schemas descrevem, em detalhes, a estrutura e as regras de validação dos objetos JSON que são utilizados nas solicitações e respostas da API. Essa padronização é fundamental para garantir a consistência e a interoperabilidade entre o cliente (aplicação que consome a API) e o servidor (nossa aplicação que fornece a API).

## ResponseEntity

O schema `ResponseEntity` é utilizado para representar uma resposta HTTP padrão, contendo um código de status, um corpo de resposta e, opcionalmente, headers adicionais. Esse schema é usado como a estrutura base para as respostas de todos os endpoints da API, garantindo uma consistência no formato das respostas.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="ResponseEntity"/>
<br/>

## Ensemble Schemas

O schema `Ensemble` define a estrutura de um conjunto de flashcards (ensemble) no sistema, incluindo informações como título, descrição, data de criação, entre outras.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="Ensemble"/>
<br/>

O schema `EnsembleRequestDTO` é utilizado para representar os dados necessários para criar ou atualizar um ensemble.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="EnsembleRequestDTO"/>
<br/>

## Purchase Schemas

O schema `PurchaseRequestDTO` é usado para representar os dados necessários para realizar a compra de um ensemble de flashcards.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="PurchaseRequestDTO"/>
<br/>

## PomodoroStory Schemas

O schema `PomodoroStoryRequestDTO` define a estrutura de uma história de Pomodoro, contendo informações como título, descrição, status e outras propriedades relevantes.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="PomodoroStoryRequestDTO"/>

<br/>

## Favorite Schemas

O schema `FavoriteRequestDTO` é usado para representar os dados necessários para criar ou atualizar um favorito do usuário.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="FavoriteRequestDTO"/>

## Box Schemas

O schema `BoxRequestDTO` define a estrutura de uma caixa (box) no sistema, que é utilizada para organizar os flashcards do usuário.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="BoxRequestDTO"/>
<br/>

## GetByIdResponse

O schema `GetByIdResponse` é usado para representar a estrutura de uma resposta que retorna um objeto identificado por um ID.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="GetByIdResponse"/>
<br/>

## ResponseCommonDTO

O schema `ResponseCommonDTO` define uma estrutura de resposta padrão, contendo informações comuns, como código de status, mensagem e dados.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="ResponseCommonDTO"/>
<br/>

## Flashcard Schemas

O schema `Flashcard` define a estrutura de um flashcard no sistema, incluindo informações como pergunta, resposta, data de criação e outras propriedades relevantes.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="Flashcard"/>
<br/>

O schema `FlashcardRequestEditDTO` é usado para representar os dados necessários para editar um flashcard existente.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="FlashcardRequestEditDTO"/>
<br/>

O schema `FlashcardRequestDTO` é usado para representar os dados necessários para criar um novo flashcard.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="FlashcardRequestDTO"/>
<br/>

## User Schemas

O schema `User` define a estrutura de um usuário no sistema, incluindo informações como nome, email, senha e outras propriedades relevantes.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="User"/>
<br/>

O schema `UserEditRequestDTO` é usado para representar os dados necessários para atualizar as informações de um usuário.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="UserEditRequestDTO"/>
<br/>

O schema `ResponseUserEditDTO` é usado para representar a resposta após a atualização das informações de um usuário.

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="ResponseUserEditDTO"/>
<br/>

## Auth Schemas

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="RegisterRequestDTO"/>
O schema `RegisterRequestDTO` é utilizado para representar os dados necessários para o registro de um novo usuário.

<br/>

<api-schema openapi-path="../../api/backend_flashpomo-openapi.yaml" name="LoginRequestDTO"/>

O schema `LoginRequestDTO` é utilizado para representar os dados necessários para o login de um usuário.
