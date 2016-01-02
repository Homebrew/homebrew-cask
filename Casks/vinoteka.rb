cask 'vinoteka' do
  version :latest
  sha256 :no_check

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml',
          :sha256 => '648e28d49c9b38e04f623f44b4ee27d4c872e5e8302bc333c733bbd258dfde44'
  name 'Vinoteka'
  homepage 'http://www.vinotekasoft.com/'
  license :commercial

  app 'Vinoteka.app'
end
