cask :v1 => 'textadept' do
  version '7.7'
  sha256 '4e684ffdca2e22d11ce8ea721a3510a2a4b0aef2ec905ecf566ee2f9c1346098'

  url "http://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  homepage 'http://foicica.com/textadept/'
  license :unknown

  app "textadept_#{version}.osx/Textadept.app"
end
