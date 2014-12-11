cask :v1 => 'zeroxdbe-eap' do
  version '138.2222.2'
  sha256 '5a388dd51cd41ce9f17cd3714edd14d91c0722db380c0949a739cc4e6b6696ac'

  url "http://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  homepage 'http://www.jetbrains.com/dbe/'
  license :unknown    # todo: improve this machine-generated value

  app '0xDBE EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
