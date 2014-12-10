cask :v1 => 'webstorm' do
  version '9.0.1'
  sha256 '81d07b1263cfab47f0cd6b66f0884475fcfaf3c705e6aa3f83a01bdc15c139ad'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/webstorm/'
  license :unknown    # todo: improve this machine-generated value

  app 'WebStorm.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
end
