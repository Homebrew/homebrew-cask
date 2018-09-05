cask 'textadept' do
  version '10.0'
  sha256 '86a08c2acde892a3e24fcd5b4bd0125d81670b1dde1b64f2ad4fb61211aa80b5'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
