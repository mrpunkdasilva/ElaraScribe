# Casos de Uso

# **UC01 - Gerenciar Usuário**

| **Nome**              | Gerenciar usuário.                                                                                      |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação e edição de contas de usuários.                            |
| **Fluxo de criação**  | 1. O usuário seleciona, na área de login, a opção "criar conta".<br/>2. O usuário preenche as informações requisitadas pelo sistema, como nome da conta, e-mail e senha.<br/>3. O usuário confirma a senha.<br/>4. O usuário aceita os termos de uso.<br/>5. O sistema valida os dados inseridos.<br/>6. O sistema cria a conta do usuário, exibindo uma mensagem de sucesso. |
| **Fluxo de edição**   | 1. O usuário seleciona o menu.<br/>2. O sistema exibe as opções de menu.<br/>3. O usuário seleciona "conta".<br/>4. O sistema mostra as informações da conta.<br/>5. O usuário seleciona a opção "editar conta".<br/>6. O usuário altera as informações permitidas, como nome ou imagem de perfil.<br/>7. O sistema valida as alterações.<br/>8. O sistema atualiza as informações da conta e exibe uma mensagem de sucesso. |
| **Ator**              | Usuário e Sistema                                                                                     |
| **Pré-condições**     | O usuário deve estar logado no sistema para editar a conta.                                            |
| **Pós-condições**     | Dados do usuário atualizados ou nova conta criada com sucesso.                                         |
| **Fluxo de Exceção**  | 1. Se o e-mail já estiver em uso, o sistema exibe uma mensagem indicando erro e solicita a correção.<br/>2. Se informações obrigatórias não forem preenchidas, o sistema exibe uma mensagem indicando os campos pendentes.<br/>3. O sistema não executa a ação até que todos os erros sejam corrigidos. |

---

# **UC02 - Autenticar Usuário**

| **Nome**              | Autenticar usuário.                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pelo log in da conta de usuário.                                        |
| **Fluxo Entrar**      | 1. O usuário insere seu e-mail na página de login.<br/>2. O usuário insere sua senha na página de login.<br/>3. O sistema valida os dados inseridos.<br/>4. Caso os dados sejam válidos, o usuário é autenticado e redirecionado à página inicial. |
| **Ator**              | Usuário                                                                                               |
| **Pré-condições**     | O usuário deve estar registrado no sistema.                                                           |
| **Pós-condições**     | Entrada no sistema.                                                                                   |
| **Fluxo de Exceção**  | 1. Caso o e-mail não esteja registrado, o sistema exibe uma mensagem de erro.<br/>2. Caso a senha esteja incorreta, o sistema exibe uma mensagem indicando erro e solicita nova tentativa. |

---

# **UC03 - Deslogar Usuário**

| **Nome**              | Deslogar usuário.                                                                                     |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pelo log out da conta de usuário.                                       |
| **Fluxo Sair**        | 1. O usuário pressiona no perfil do menu.<br/>2. O usuário pressiona o botão "log out".<br/>3. O sistema exibe um pop-up para confirmação.<br/>4. O usuário confirma o log out.<br/>5. O sistema encerra a sessão e redireciona o usuário para a página de login. |
| **Ator**              | Usuário                                                                                               |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Saída do sistema.                                                                                     |

---

# **UC04 - Gerenciamento de Pomodoro**

| **Nome**              | Gerenciamento de Pomodoro                                                                             |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso descreve as funcionalidades de ativação, desativação, pausa e retomada do temporizador de Pomodoro no sistema. |
| **Fluxo de ativação**  | 1. O usuário acessa a funcionalidade de Pomodoro no sistema.<br/>2. O sistema verifica se o usuário está autenticado e tem acesso à funcionalidade.<br/>3. O sistema exibe a interface do temporizador de Pomodoro.<br/>4. O usuário clica no botão "Iniciar Pomodoro".<br/>5. O sistema ativa o temporizador, definindo a duração padrão (ex.: 25 minutos).<br/>6. O sistema inicia a contagem regressiva e exibe o tempo restante.<br/>7. Ao atingir o final do ciclo, o sistema emite um aviso sonoro.<br/>8. O sistema exibe uma mensagem informando a conclusão. |
| **Fluxo de pausa**     | 1. Durante um ciclo ativo, o usuário clica no botão "Pausar Pomodoro".<br/>2. O sistema interrompe a contagem regressiva.<br/>3. O sistema altera o estado para "Pausado".<br/>4. O usuário pode retomar ou parar o ciclo. |
| **Fluxo de retomada**  | 1. Durante um ciclo pausado, o usuário clica no botão "Retomar Pomodoro".<br/>2. O sistema verifica se há um ciclo em estado "Pausado".<br/>3. O sistema retoma a contagem regressiva.<br/>4. O sistema atualiza a interface.<br/>5. Ao atingir o final do ciclo, o sistema emite um aviso sonoro e exibe uma mensagem informando a conclusão. |

---

# **UC05 - Gerenciar Relatório de Pomodoros**

| **Nome**              | Gerenciar Relatório de Pomodoros                                                                      |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação e consulta de relatórios dos Pomodoros.                   |
| **Fluxo de criação**  | 1. O usuário seleciona a opção “criar relatório de Pomodoro”.<br/>2. O usuário informa o período desejado (datas de início e fim).<br/>3. O sistema gera o relatório com base nos dados.<br/>4. O sistema valida os dados e exibe o relatório gerado.<br/>5. O usuário confirma o relatório. |
| **Fluxo de consulta** | 1. O usuário seleciona a opção “consultar relatório de Pomodoro”.<br/>2. O usuário informa o período desejado ou escolhe relatórios existentes.<br/>3. O sistema exibe o relatório solicitado.<br/>4. O usuário visualiza o relatório. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Relatório de Pomodoros criado ou consultado.                                                          |

---

# **UC06 - Gerenciar Flashcards**

| **Nome**              | Gerenciar Flashcards                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação, edição e consulta de flashcards do usuário.              |
| **Fluxo de criação**  | 1. O usuário seleciona a opção de adicionar flashcards “+” logo abaixo do Pomodoro.<br/>2. O sistema exibe um formulário para que o usuário preencha as informações do novo flashcard.<br/>3. O usuário preenche as informações solicitadas.<br/>4. O usuário clica no botão "Salvar".<br/>5. O sistema valida as informações.<br/>6. Caso válidas, o sistema salva o novo flashcard.<br/>7. O sistema exibe uma mensagem de sucesso.<br/>8. O sistema atualiza a lista de flashcards do usuário. |
| **Fluxo de edição**   | 1. O usuário seleciona os três pontos do flashcard.<br/>2. O sistema exibe as opções de favoritar, editar ou excluir.<br/>3. O usuário seleciona a opção “editar”.<br/>4. O usuário preenche os novos dados do flashcard.<br/>5. O sistema valida as informações.<br/>6. Caso válidas, o flashcard é atualizado no banco de dados.<br/>7. O sistema exibe uma mensagem de sucesso.<br/>8. O sistema atualiza a lista de flashcards do usuário. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração da lista de flashcards do usuário.                                                          |

---

# **UC07 - Gerenciar Histórico dos Flashcards**

| **Nome**              | Gerenciar Histórico dos Flashcards                                                                    |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela adição e remoção de flashcards do histórico.                      |
| **Fluxo principal**   | 1. O usuário seleciona um flashcard.<br/>2. O sistema adiciona o flashcard no histórico.<br/>3. O sistema organiza os flashcards conforme a ordem de acesso. |
| **Fluxo de remoção**  | 1. O usuário seleciona a opção “menu”.<br/>2. O sistema exibe as opções de menu.<br/>3. O usuário seleciona a opção “flashcards”.<br/>4. O usuário acessa a interface de gerenciamento de flashcards.<br/>5. O usuário seleciona a opção “Histórico”.<br/>6. O usuário seleciona o flashcard correspondente.<br/>7. O usuário seleciona a opção “Remover do Histórico”.<br/>8. O sistema exibe uma mensagem de confirmação.<br/>9. Caso o usuário confirme, o sistema remove o flashcard do histórico. Caso contrário, volta à tela anterior. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração no histórico de flashcards do usuário.                                                     |

---

# **UC08 - Gerenciar Favoritos**

| **Nome**              | Gerenciar Favoritos                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela adição e remoção de flashcards dos favoritos.                     |
| **Fluxo de favoritar** | 1. O usuário seleciona os três pontos no quadrado do flashcard específico.<br/>2. O sistema exibe as opções de favoritar, editar ou excluir.<br/>3. O usuário seleciona a opção “favoritar”. |
| **Fluxo de desfavoritar** | 1. O usuário seleciona os três pontos no quadrado do flashcard específico.<br/>2. O sistema exibe as opções de favoritar, editar ou excluir.<br/>3. O usuário seleciona a opção “desfavoritar”. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração na lista de favoritos do usuário.                                                          |

---

# **UC09 - Gerenciar Conjuntos de Flashcards**

| **Nome**              | Gerenciar Conjuntos                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação, consulta, edição e exclusão das categorias de flashcards. |
| **Fluxo de criação**  | 1. O usuário seleciona a opção de criar conjunto “+ com uma pasta” logo abaixo do Pomodoro.<br/>2. O sistema exibe um formulário para que o usuário preencha o nome, descrição e cor do novo conjunto.<br/>3. O usuário preenche os requisitos.<br/>4. O usuário confirma a criação do conjunto.<br/>5. O sistema valida as informações.<br/>6. O sistema atualiza as informações e adiciona o novo conjunto. |
| **Fluxo de consulta** | 1. O usuário seleciona a lupa na parte dos conjuntos.<br/>2. O sistema abre um campo de texto para escrita.<br/>3. O usuário digita o nome do conjunto desejado.<br/>4. O usuário confirma a pesquisa.<br/>5. O sistema mostra os conjuntos que correspondem à pesquisa. |
| **Fluxo de edição**   | 1. O usuário seleciona a opção “ver mais” logo abaixo dos conjuntos.<br/>2. O sistema exibe um modal com todos os conjuntos.<br/>3. O usuário seleciona os três pontos de um conjunto.<br/>4. O sistema exibe as opções de editar ou excluir.<br/>5. O usuário escolhe “editar”.<br/>6. O sistema exibe o conjunto com opções para alterar flashcards, nome, descrição ou cor.<br/>7. O usuário confirma as alterações.<br/>8. O sistema valida e atualiza o conjunto no banco de dados. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Criar, consultar, editar ou excluir as categorias dos flashcards.                                     |

---

# **UC10 - Comprar Flashcards**

| **Nome**              | Comprar Flashcards                                                                                   |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela compra de flashcards usando a moeda do sistema.                  |
| **Fluxo de Compra**   | 1. O usuário acessa a interface da loja.<br/>2. O sistema exibe uma lista de flashcards disponíveis para compra, com filtros por categoria e preço.<br/>3. O usuário seleciona o flashcard desejado.<br/>4. O sistema verifica se o usuário possui saldo suficiente.<br/>5. Caso tenha saldo, o sistema exibe uma mensagem de confirmação.<br/>6. O usuário confirma a compra.<br/>7. O sistema atualiza a lista de flashcards do usuário e debita o saldo da conta.<br/>8. O sistema exibe o flashcard comprado ao usuário. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema e possuir saldo suficiente.                                    |
| **Pós-condições**     | Alteração no saldo e atualização da lista de flashcards do usuário.                                  |

---

# **UC11 - Gerenciar Box Sells**

| **Nome**              | Gerenciamento de Box Sells                                                                             |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela criação, edição e exclusão de Box Sells.                          |
| **Fluxo de criação**  | 1. O usuário acessa a interface de gerenciamento de Box Sells.<br/>2. O usuário seleciona a opção “Criar Box Sell”.<br/>3. O sistema solicita ao usuário que defina um nome e uma descrição.<br/>4. O usuário escolhe os flashcards a serem incluídos.<br/>5. O sistema exibe um resumo da Box Sell com os flashcards selecionados.<br/>6. O usuário define o preço de venda.<br/>7. O usuário confirma a criação.<br/>8. O sistema adiciona a Box Sell à loja e à lista de vendas disponíveis. |
| **Fluxo de edição**   | 1. O usuário acessa a interface de gerenciamento de Box Sells.<br/>2. O usuário seleciona a Box Sell que deseja editar.<br/>3. O sistema exibe os detalhes da Box Sell.<br/>4. O usuário altera nome, descrição ou flashcards incluídos.<br/>5. O usuário confirma as alterações.<br/>6. O sistema valida e atualiza a Box Sell no banco de dados. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema e ter permissões para gerenciar Box Sells.                     |
| **Pós-condições**     | Alteração na lista de Box Sells disponíveis e no banco de dados.                                      |

---

# **UC12 - Vender Flashcards**

| **Nome**              | Vender Flashcards                                                                                     |
|------------------------|-------------------------------------------------------------------------------------------------------|
| **Descrição**         | Este caso de uso é responsável pela venda de flashcards usando a moeda do sistema.                   |
| **Fluxo de Venda**    | 1. O usuário acessa a interface da loja.<br/>2. O usuário seleciona a opção “Venda de Flashcards”.<br/>3. O usuário escolhe o flashcard a ser vendido.<br/>4. O usuário define o valor da venda em moedas do sistema.<br/>5. O usuário confirma a venda.<br/>6. O sistema lista o flashcard para outros usuários.<br/>7. Quando vendido, o sistema credita o valor na conta do usuário e remove o flashcard. |
| **Ator**              | Usuário e Sistema                                                                                    |
| **Pré-condições**     | O usuário deve estar logado no sistema.                                                               |
| **Pós-condições**     | Alteração no saldo e na lista de flashcards do usuário.                                              |
