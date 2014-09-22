class Webstorm < Cask
  version '8.0.4'
  sha256 '33abeb4712e8515a7eae6c076edef0922bf96bf46538ff45bf627787e5e2eb9e'

  url 'http://download-cf.jetbrains.com/webstorm/WebStorm-8.0.4.dmg'
  homepage 'http://www.jetbrains.com/webstorm/'

  app 'WebStorm.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/WebStorm.app/Contents/Info.plist"
  end
end
