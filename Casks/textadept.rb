cask :v1 => 'textadept' do
  version '7.9'
  sha256 'd9c294bd25cdf40c1a7fc0316be694d9481a3a439e194c7420923a51d2277f42'

  url "http://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  name 'Textadept'
  homepage 'http://foicica.com/textadept/'
  license :mit

  app "textadept_#{version}.osx/Textadept.app"
end
