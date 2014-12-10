cask :v1 => 'tubbler' do
  version :latest
  sha256 :no_check

  url 'http://www.celmaro.com/files/tubbler/Tubbler.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/tubbler/tubbler.xml'
  homepage 'http://www.celmaro.com/tubbler'
  license :unknown    # todo: improve this machine-generated value

  app 'Tubbler.app'
end
