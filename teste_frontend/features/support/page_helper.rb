#este arquivo tem como objetivo instanciar as Pages feitas anteriormente diminuindo a quantidade de codigo excessivo no arquivo de testes
Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file }

module Pages
    def home
        @home ||= HomePage.new
    end

    def pravoce
        @pravoce ||= PraVocePage.new
    end
end