cask 'textadept' do
  version '9.4'
  sha256 '187c4de715b355934bf4ac25a8076f428f6c13039ff93bc0c3651adcaf584e22'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed',
          checkpoint: 'feade9c945b551c4b5a2aa992c280c5e872d5e7e33f7e315953ec561c09d3205'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
