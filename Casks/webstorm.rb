cask :v1 => 'webstorm' do
  version '9.0.3'
  sha256 'adc04ee25e7d3821659d2c4dbe1cdd8d0c15622ebcdaa3db2b6e02f79abb34b8'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
