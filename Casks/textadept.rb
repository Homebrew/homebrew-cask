cask 'textadept' do
  version '10.5'
  sha256 'ab691e3a4a8958d390dcaacff1083f8acdc28539b7d54de77077d5145401308b'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
