class HomePage < SitePrism::Page

    set_url "https://www.vr.com.br"

    element :btn_pra_voce, 'a[href="onde-aceita.htm"]'

    def navegar_pag_pravoce (texto)
        btn_pra_voce.click
        assert_text(texto)
    end

    def navegar_mapa_busca (texto)
        first(:css,'a[href="#rede-credenciada"]').click
        assert_text(texto)
    end

end