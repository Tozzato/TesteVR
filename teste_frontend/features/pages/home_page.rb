#Este arquivo tem como objetivo servir como Objeto para instaciar elementos e metodos para Homepage do site
class HomePage < SitePrism::Page

    set_url "https://www.vr.com.br"

    element :btn_pra_voce, 'a[href="onde-aceita.htm"]'

    #Este metodo serve para navegar ate a aba desejada "Pra Voçê"
    def navegar_pag_pravoce (texto)
        btn_pra_voce.click
        assert_text(texto)
    end
end