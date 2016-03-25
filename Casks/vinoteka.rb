cask 'vinoteka' do
  version '3.4.8'
  sha256 'cc6520196c4725f21385492ea8a71001ffa3c4ba3439a499449a159d7f7239f4'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml',
          checkpoint: '4ba9b7e1b45d4a69750b3a2eac9a84b6b59a1881d76eecf2c981fffeacfe302f'
  name 'Vinoteka'
  homepage 'http://www.vinotekasoft.com/'
  license :commercial

  app 'Vinoteka.app'
end
