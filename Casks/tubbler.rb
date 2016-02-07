cask 'tubbler' do
  version '1.8.5'
  sha256 'ac3696503fcab15b5bdf343854b5a8cafa799702c727fb57adb6d0dae9934981'

  url 'http://www.celmaro.com/files/tubbler/Tubbler.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/tubbler/tubbler.xml',
          checkpoint: '332992e2232a2bfe6a207493f7ef6b97e1c5044d8d1e68b60bc9f9f2f0f5b26a'
  name 'Tubbler'
  homepage 'http://www.celmaro.com/tubbler'
  license :gratis

  app 'Tubbler.app'
end
