Quando('faço uma requisição GET para o endpoint') do
    @request_services = services.get_services
  end
  
  Então('o serviço deve responder com {int}') do |code|
    expect(@request_services.code).to eq code
  end
  
  Então('retorna uma resposta') do
    expect(@request_services.message).not_to be_empty
    puts @request_services['typeOfEstablishment'][1]
  end