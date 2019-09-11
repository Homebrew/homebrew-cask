cask 'textadept' do
  version '10.6'
  sha256 '602baface4d78efd0e651bda4bbb1f78e6f2cfb3493dae664e1facb42b5afa42'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
