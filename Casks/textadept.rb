cask 'textadept' do
  version '10.3'
  sha256 '2527ce7af21b8c2efab2048329f77dc6f28f0c92c4be4011ef0831452f8da018'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
