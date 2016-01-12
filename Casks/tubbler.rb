cask 'tubbler' do
  version :latest
  sha256 :no_check

  url 'http://www.celmaro.com/files/tubbler/Tubbler.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/tubbler/tubbler.xml',
          :sha256 => 'ab17ceb8a4ae681599626c0ccc35abaad4e1e386370f2b43f2b34fcff9d72f43'
  name 'Tubbler'
  homepage 'http://www.celmaro.com/tubbler'
  license :gratis

  app 'Tubbler.app'
end
