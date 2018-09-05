cask 'vinoteka' do
  version '3.6.2'
  sha256 '94640e140edb6f2fd7375c6315d300b865047e6e60e3247d237cfbdac702e438'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml'
  name 'Vinoteka'
  homepage 'https://www.vinotekasoft.com/'

  app 'Vinoteka.app'
end
