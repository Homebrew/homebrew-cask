cask :v1 => 'vinoteka' do
  version :latest
  sha256 :no_check

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml'
  name 'Vinoteka'
  homepage 'http://www.vinotekasoft.com/'
  license :commercial

  app 'Vinoteka.app'
end
