cask :v1 => 'webstorm' do
  version '9.0.2'
  sha256 '9638d9a9a68e96db11f8acdc2a0a3e71a316fc14ac74193bc4bcb4745d975203'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/webstorm/'
  license :commercial

  app 'WebStorm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
