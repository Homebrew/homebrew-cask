cask 'textadept' do
  version '10.7'
  sha256 '645945ab5f7ee11f39df435006990f55cf2f86d60e1f9ba49d225e9070c75593'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
