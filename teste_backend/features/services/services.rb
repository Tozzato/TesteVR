#este arquivo tem como objetivo setar alguns parametros para acesso da API disponibilizada e como o HTTParty retornara ela no teste
module Rest
    class Services
        include HTTParty
        default_options.update(verify: false)
        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_services
            self.class.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT', :verify => false )
        end
    end
end
