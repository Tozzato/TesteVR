#Este arquivo tem como objetivo servir como Objeto para instaciar elementos e metodos para Aba Pra Voce do site
class PraVocePage < SitePrism::Page

    #Este metodo tem como objetivo navegar ate o mapa da aba e fazer a verificação do mesmo
    def navegar_mapa_busca (texto)
        first(:css,'a[href="#rede-credenciada"]').click
        assert_text(texto)
    end

end