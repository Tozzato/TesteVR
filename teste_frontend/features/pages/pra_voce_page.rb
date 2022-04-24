class PraVocePage < SitePrism::Page

    def navegar_mapa_busca (texto)
        first(:css,'a[href="#rede-credenciada"]').click
        assert_text(texto)
    end

end