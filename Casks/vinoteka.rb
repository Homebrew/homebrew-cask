cask 'vinoteka' do
  version '3.6.3'
  sha256 '71df513b314119da87cc962aab62b2048c86273a3961e78dca24c3f29342dc71'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml'
  name 'Vinoteka'
  homepage 'https://www.vinotekasoft.com/'

  app 'Vinoteka.app'
end
