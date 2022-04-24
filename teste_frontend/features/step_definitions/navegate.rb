Dado('que eu esteja na pagina inicial') do
  home.load
  assert_text('Pra sua Empresa')
  end
  
  Quando('eu clicar no botão para pra voce') do
    home.navegar_pag_pravoce('Onde usar meu VR Refeição?')
  end
  
  Quando('verifico que o botão onde usar meu VR Refeicao? existe na pagina e o pressiono') do
    pravoce.navegar_mapa_busca('Selecione um cartão VR...')
  end
  
  Entao('o mapa deverá aparecer na tela') do
    assert_selector('#map')
  end