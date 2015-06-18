cask :v1 => 'virtualhostx' do
  version '6.0.4'
  sha256 'd0ab4ef0049639e94887dc011dbe36a46fbe963494a39af7ad190417c08620a3'

  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx60_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=30'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end
