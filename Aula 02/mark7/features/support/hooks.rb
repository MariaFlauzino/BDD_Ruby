Before('@autenticado') do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    visit '/login'
    @login_page.logar('maria@teste.com','123456' )
    @tarefas_page.wait_for_painel
end

After('@logout') do
    @nav_bar.logout
end