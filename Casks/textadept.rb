cask 'textadept' do
  version '10.1'
  sha256 'cd168a79d54ac2e49bc87b1fd8ccbeabe520de26c1cc88b171610b6a2e8b6286'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
