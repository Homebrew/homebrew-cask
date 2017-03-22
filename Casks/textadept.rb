cask 'textadept' do
  version '9.2'
  sha256 '8fbc8f05ebbcd0118d72a2d1044415778aadc7a4c9bfba578f2964383797f66e'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed',
          checkpoint: '62e7aa917e28ee129b3942114bd18e635a6c0ed081a1ec71eecc75f661e44be4'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
