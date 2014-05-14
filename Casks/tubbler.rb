class Tubbler < Cask
  url 'http://www.celmaro.com/files/tubbler/Tubbler.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/tubbler/tubbler.xml'
  homepage 'http://www.celmaro.com/tubbler'
  version 'latest'
  sha256 :no_check
  link 'Tubbler.app'
end
