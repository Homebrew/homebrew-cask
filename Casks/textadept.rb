cask 'textadept' do
  version '8.3'
  sha256 '25215aa18ce279fc312dd2a8e5b88eca32ce551991f5475cb12dbd491b24619d'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
