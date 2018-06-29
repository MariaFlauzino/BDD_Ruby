Dado("que eu tenho uma tarefa com os seguintes atributos:") do |table|
    @tarefas_page = TarefasPage.new
    @nova_tarefa =  table.rows_hash
end

 Dado("eu quero taguear essa tarefa com") do |tags|
    @tags =  tags.hashes
  end

  Quando("faço o cadastro dessa tarefa") do
    visit '/tasks'
    @tarefas_page.botao_novo.click
    @tarefas_page.adicionar.cadastrar(@nova_tarefa)
 end
  
  Então("devo ver essa tarefa com o status {string}") do |status_tarefa|
    tarefa = @tarefas_page.item(@nova_tarefa[:nome])
    expect(tarefa).to have_content status_tarefa
  end
  
  Dado("eu já tinha cadastrado essa tarefa e não tinha percebido") do
    pending # Write code here that turns the phrase above into concrete actions
  end

 
  
  Então("devo ver uma mensagem {string} Ao tentar cadastrar.") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ver somente uma tarefa com o nome cadastrado.") do
    pending # Write code here that turns the phrase above into concrete actions
  end