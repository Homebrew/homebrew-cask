class Trailer < Cask
  version '1.0.26'
  sha256 '2cad2a5af786429d6917b22cd131e7425054f3792a284620902dcb985308aab8'

  url 'http://dev.housetrip.com/trailer/trailer1026.zip'
  appcast 'http://dev.housetrip.com/trailer/appcast.xml'
  homepage 'http://dev.housetrip.com/trailer/'

  app 'Trailer.app'
end
