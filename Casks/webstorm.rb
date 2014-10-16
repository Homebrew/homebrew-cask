class Webstorm < Cask
  version '8.0.5'
  sha256 '48a320515a2ce809fadac81a3b688663e1538e91959248bbaded8418624ca585'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
  homepage 'http://www.jetbrains.com/webstorm/'
  license :unknown

  app 'WebStorm.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/WebStorm.app/Contents/Info.plist"
  end
end
