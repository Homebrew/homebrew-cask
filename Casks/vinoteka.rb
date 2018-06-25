cask 'vinoteka' do
  version '3.5.1'
  sha256 '9e347baab54b5f57bf9bf8d8f687a8ee4620007572718a6e1b301018c1955428'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml'
  name 'Vinoteka'
  homepage 'https://www.vinotekasoft.com/'

  app 'Vinoteka.app'
end
