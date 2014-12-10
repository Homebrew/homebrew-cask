cask :v1 => 'virtualhostx' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/virtualhostx/download/v6/'
  appcast 'http://shine.clickontyler.com/appcast.php?id=30'
  homepage 'http://clickontyler.com/virtualhostx/'
  license :unknown    # todo: improve this machine-generated value

  app 'VirtualHostX.app'
end
