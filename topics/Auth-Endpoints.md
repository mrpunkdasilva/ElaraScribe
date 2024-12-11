# Auth Endpoints

A autenticação é um aspecto crucial de aplicações web, permitindo que os usuários acessem suas contas de forma segura e executem diversas ações. Os endpoints de autenticação mais comuns incluem registro, login, logout e gerenciamento de senha.

O endpoint de registro permite que os usuários criem uma nova conta, fornecendo informações como nome de usuário, email e senha. Após um registro bem-sucedido, o usuário normalmente recebe um token de autenticação, que pode ser usado em solicitações autenticadas posteriores.

O endpoint de login é usado para autenticar os usuários e obter um token de autenticação, que é então usado para autorizar as ações do usuário. Esse token é tipicamente um JSON Web Token (JWT) que contém as informações do usuário e é assinado pelo servidor.

## POST /auth/login

Este endpoint permite que os usuários realizem o login no sistema e obtenham um token de autenticação.

<api-endpoint openapi-path="../api/backend_flashpomo-openapi.yaml" method="POST" endpoint="/auth/login"/>

## POST /auth/register

Este endpoint permite que os usuários se registrem no sistema, criando uma nova conta.

<api-endpoint openapi-path="../api/backend_flashpomo-openapi.yaml" method="POST" endpoint="/auth/register"/>
