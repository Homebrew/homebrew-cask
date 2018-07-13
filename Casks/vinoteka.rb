cask 'vinoteka' do
  version '3.6.1'
  sha256 '1be2a12d0714c0dc2ecccaecac8b11781354a2f00a460a2dcc09e07659b29b62'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml'
  name 'Vinoteka'
  homepage 'https://www.vinotekasoft.com/'

  app 'Vinoteka.app'
end
