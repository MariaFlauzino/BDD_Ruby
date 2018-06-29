# - Adicionar é classe que representa a subpagina Adicionar tarefas
# que será tratada como uma Seção do SitePrism
class Adicionar < SitePrism::Section
    element :campo_nome, 'input[name=title]'
    element :campo_data, 'input[name=dueDate]'
    element :botao_cadastrar, 'button[id*=submit]'


    def cadastrar(tarefa)
        campo_nome.set tarefa[:nome]
        campo_data.set tarefa[:data]
        botao_cadastrar.click
    end
end


# - TarefasPage é a pagina principal
class TarefasPage < SitePrism::Page
    element :painel, '#task-board'
    element :botao_novo, '#insert-button'

    def item(valor)
        find('table tbody tr', text: valor)
    end

    section :adicionar, Adicionar, '#add-task-view'
end