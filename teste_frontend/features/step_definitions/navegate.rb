Dado('que eu esteja na pagina inicial') do
  #home.load faz a abertura do chrome para iniciar o teste na url expecificada
  home.load
  #assert que a pagina esta carregada
  assert_text('Pra sua Empresa')
  end
  
  Quando('eu clicar no botão para pra voce') do
    #metodo feito para fazer a navegacao e assert da pagina expecificada
    home.navegar_pag_pravoce('Onde usar meu VR Refeição?')
  end
  
  Quando('verifico que o botão onde usar meu VR Refeicao? existe na pagina e o pressiono') do
    #metodo usado para verificar que o botao existe na pagina e clicar nele
    pravoce.navegar_mapa_busca('Selecione um cartão VR...')
  end
  
  Entao('o mapa deverá aparecer na tela') do
    #verificacao para o objeto mapa existente na tela
    assert_selector('#map')
  end