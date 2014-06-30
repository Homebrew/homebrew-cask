class Vinoteka < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml'
  homepage 'http://www.vinotekasoft.com/'

  link 'Vinoteka.app'
end
