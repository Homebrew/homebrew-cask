cask 'textadept' do
  version '9.3'
  sha256 '4bfbf9beb721c2b2381f2f2cf02b3b7140298f0a6c92f84a84cc74bc506ede06'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed',
          checkpoint: '0314f0b3c5008bb63900076d3bab8f0e555b8b73f15c3911bc7dfe5c96064aa6'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
