class Textadept < Cask
  version '7.6'
  sha256 '7adca1287f476ec45049392709b875f84c5e54ce72f5a4ccb7f5d2bcd31f7658'

  url "http://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  homepage 'http://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
