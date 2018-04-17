cask 'textadept' do
  version '9.6'
  sha256 '0e4612263654b07cc8edb978f4fd9806b37b76c085f5d39a10312c7a60b9d207'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed',
          checkpoint: '78f04804812bfcbcd187db0addf01ff69b9330008def73f14891649efea63192'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
