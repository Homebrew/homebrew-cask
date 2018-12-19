cask 'textadept' do
  version '10.2'
  sha256 '00aac7bee8cd6a1d9bd8c5a74de76b2612ae83115341ea6ac8ab4cdd35051189'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
