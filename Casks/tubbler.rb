cask :v1 => 'tubbler' do
  version :latest
  sha256 :no_check

  url 'http://www.celmaro.com/files/tubbler/Tubbler.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/tubbler/tubbler.xml'
  name 'Tubbler'
  homepage 'http://www.celmaro.com/tubbler'
  license :gratis

  app 'Tubbler.app'
end
