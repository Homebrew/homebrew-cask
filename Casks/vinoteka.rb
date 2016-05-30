cask 'vinoteka' do
  version '3.5.0'
  sha256 '75581dc007b6bf047ea11093436ac78254de36005b58e770a9076f838056399b'

  url 'http://download.vinotekasoft.com/Vinoteka.zip'
  appcast 'http://download.vinotekasoft.com/vinoteka_update.xml',
          checkpoint: '5664b44e3a2ae8d493a8a4693dde30d14430cbd193b47d2c844a30840489bc8c'
  name 'Vinoteka'
  homepage 'http://www.vinotekasoft.com/'
  license :commercial

  app 'Vinoteka.app'
end
