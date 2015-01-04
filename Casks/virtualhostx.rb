cask :v1 => 'virtualhostx' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/virtualhostx/download/v6/'
  name 'VirtualHostX'
  appcast 'http://shine.clickontyler.com/appcast.php?id=30'
  homepage 'http://clickontyler.com/virtualhostx/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VirtualHostX.app'
end
