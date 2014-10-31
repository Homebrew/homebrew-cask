class Trailer < Cask
  version '1.0.26'
  sha256 '2cad2a5af786429d6917b22cd131e7425054f3792a284620902dcb985308aab8'

  url "http://dev.housetrip.com/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://dev.housetrip.com/trailer/appcast.xml',
          :sha256 => '29bf4e05cc270ce058431c9f1b7fef53906be034a9e571b91c30cc97a2a80909'
  homepage 'http://dev.housetrip.com/trailer/'
  license :unknown

  app 'Trailer.app'
end
