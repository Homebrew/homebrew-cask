cask :v1 => 'virtualhostx' do
  version '6.0.4'
  sha256 'd0ab4ef0049639e94887dc011dbe36a46fbe963494a39af7ad190417c08620a3'

  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx60_#{version}.zip"
  appcast 'http://shine.clickontyler.com/appcast.php?id=30'
  name 'VirtualHostX'
  homepage 'http://clickontyler.com/virtualhostx/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VirtualHostX.app'
end
