#language: pt

@sprint2
Funcionalidade: Cadastrar tarefas
    Para que eu possa organizar minhas atividades 
    Sendo um usuário cadastrado
    Posso cadastrar novas tarefas

    @autenticado @nova_tarefa
    Cenário: Nova tarefa

        Dado que eu tenho uma tarefa com os seguintes atributos:
            |nome| Fazer uma Compra|
            |data| 25/06/2018|
        E eu quero taguear essa tarefa com 
            | tag          |
            | compras      |
            | supermercado |
            | ketchup      |
        Quando faço o cadastro dessa tarefa
        Então devo ver essa tarefa com o status "Em andamento"
    
    @autenticado
    Cenário: Tarefa não pode ser duplicada

        Dado que eu tenho uma tarefa com os seguintes atributos:
            |nome| Ler um livro|
            |data| 25/06/2018|
        E eu quero taguear essa tarefa com 
            | tag     |
            | go      |
            | estudar |
            | livro   |
            | harcore |
        Mas eu já tinha cadastrado essa tarefa e não tinha percebido
        Quando faço o cadastro dessa tarefa
        Então devo ver uma mensagem "Tarefa duplicada." Ao tentar cadastrar.
        E devo ver somente 1 tarefa com o nome cadastrado.
