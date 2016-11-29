cask 'vinoteka' do
  version '3.5.1'
  sha256 '21b85c94f51d77e56a0dea29f619ee1a12191cfaa04c1d81b7b7113ae85cad19'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml',
          checkpoint: '7e65d66ceafa9deb3af5758197ede0f893b2858b1dd9272e870b64a24c887842'
  name 'Vinoteka'
  homepage 'https://www.vinotekasoft.com/'

  app 'Vinoteka.app'
end
