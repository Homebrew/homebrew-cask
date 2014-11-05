class Trailer < Cask
  version '1.1.1'
  sha256 'a24bd6bb40fdafc638732fa1eb5f44b7e333ea1986e792c367f5e7632f184983'

  url "http://dev.housetrip.com/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://dev.housetrip.com/trailer/appcast.xml',
          :sha256 => '18944eb95afa0c9627d1682a3b8afb7f4a4f72d35a721e7379d7e0ba2623e619'
  homepage 'http://dev.housetrip.com/trailer/'
  license :mit

  app 'Trailer.app'
end
