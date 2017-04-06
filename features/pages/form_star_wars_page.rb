class FormStarWarsPage < SitePrism::Page
  set_url 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/viewform?chromeless=true&fbzx=1943858469870249200'
  element :botao_proxima, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div/content/span'
  element :campo_nome, "input[name='entry.559352220']"
  element :campo_email, "input[name='entry.443565211']"
  element :opcao_sim_gosta_starwars, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div'
  element :opcao_nenhum_filmes_assistidos, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[5]/div[2]/div[1]/div/label/div/div[1]/div[2]'
  element :campo_personagem_favorito, "input[name='entry.1789979110']"
  element :drop_box_escolher, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[1]/div[1]/content'
  element :opcao_sim_novo_filme, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[3]'
  element :opcao_nao_novo_filme, :xpth, '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[4]'
  element :botao_enviar, :xpath, '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div[2]/content/span'

  def tocar_botao_proxima
    botao_proxima.click
  end

  def preencher_campos
    campo_nome.set Faker::Name.name
    campo_email.set Faker::Internet.email
    opcao_sim_gosta_starwars.click
    opcao_nenhum_filmes_assistidos.click
    campo_personagem_favorito.set Faker::Name.name
    drop_box_escolher.click
    opcao_sim_novo_filme.click
  end

  def clicar_botao_enviar
    sleep 3 #ele tenta clicar em enviar antes de selecionar o combo botao_proxima
    botao_enviar.click
  end

  def tela_de_sucesso_visivel?
    fail "mensagem de sucesso incorreta!" unless assert_text 'Obrigado por responder as perguntas'
  end

end
