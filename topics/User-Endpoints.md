# User Endpoints

Esta seção descreve os endpoints relacionados ao gerenciamento de usuários no sistema.

## GET /user {id="get-user_1"}

Este endpoint retorna todos os usuários cadastrados no sistema.

<api-endpoint openapi-path="../api/backend_flashpomo-openapi.yaml" method="GET" endpoint="/user"/>

## GET /user/{userId}

Este endpoint retorna os detalhes de um usuário específico, identificado pelo seu ID.

<api-endpoint openapi-path="../api/backend_flashpomo-openapi.yaml" method="GET" endpoint="/user/{userId}"/>

## PUT /user/{userId}

Este endpoint permite atualizar as informações de um usuário existente, identificado pelo seu ID.

<api-endpoint openapi-path="../api/backend_flashpomo-openapi.yaml" method="PUT" endpoint="/user/{userId}"/>

## DELETE /user/{userId}

Este endpoint permite excluir um usuário do sistema, identificado pelo seu ID.

<api-endpoint openapi-path="../api/backend_flashpomo-openapi.yaml" method="DELETE" endpoint="/user/{userId}"/>
