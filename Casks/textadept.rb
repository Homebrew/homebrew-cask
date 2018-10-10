cask 'textadept' do
  version '10.0'
  sha256 '22429aaf231e5be44857c274659a37bc6940d153079d5b21744672c29c8c19a9'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
