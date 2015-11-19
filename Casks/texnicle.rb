cask :v1 => 'texnicle' do
  version '2.2.14'
  sha256 '95a505f3668b11845103071c44d5aadd1188e04070fc26751ff42390ce4a8580'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/2.2/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php',
          :sha256 => '5fbf68ddbedd5cb0b8e013b9d62ded17431ff057867b54943625946df1b2b7d3'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'
  license :gratis

  app 'TeXnicle.app'
end
