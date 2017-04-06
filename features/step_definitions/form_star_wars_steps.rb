Dado(/^que estou na home do star war questions$/) do
  @page= FormStarWarsPage.new
  @page.load
end

Dado(/^clico no botão próxima$/) do
  @page.tocar_botao_proxima
end

Dado(/^preencho todos os campos da Untitled Section$/) do
  @page.preencher_campos
end

Quando(/^clico em enviar$/) do
  @page.clicar_botao_enviar
end

Então(/^visualizo a tela de sucesso$/) do
  @page.tela_de_sucesso_visivel?
end
