#language: pt
#utf-8

#este arquivo tem como finalidade de ser utilizado para o BDD
Funcionalidade: produtos e estabelecimentos
    Validar retorno do serviço

    @get_services
    Cenario: Validar GET produtos e estabelecimentos
        Quando  faço uma requisição GET para o endpoint
        Então o serviço deve responder com 200
        E retorna uma resposta 