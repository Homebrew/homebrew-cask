cask :v1 => 'texnicle' do
  version '2.2.13'
  sha256 'f59df9ab6aac30cac1bd819e4c8c5e8572ed23af3b32f49f0725e44f118254e0'

  url "http://www.bobsoft-mac.de/resources/TeXnicle/2.2/TeXnicle.app.#{version}.zip"
  appcast 'http://www.bobsoft-mac.de/profileInfo.php',
          :sha256 => '5fbf68ddbedd5cb0b8e013b9d62ded17431ff057867b54943625946df1b2b7d3'
  name 'TeXnicle'
  homepage 'http://www.bobsoft-mac.de/texnicle/texnicle.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TeXnicle.app'
end
