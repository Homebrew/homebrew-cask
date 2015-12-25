cask 'tubbler' do
  version :latest
  sha256 :no_check

  url 'http://www.celmaro.com/files/tubbler/Tubbler.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/tubbler/tubbler.xml',
          :sha256 => '81dfee679640c608ba922bc30f4770f21cec9c71aba4cf29ecf9f543ada296a8'
  name 'Tubbler'
  homepage 'http://www.celmaro.com/tubbler'
  license :gratis

  app 'Tubbler.app'
end
