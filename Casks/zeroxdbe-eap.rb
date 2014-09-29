class ZeroxdbeEap < Cask
  version '138.2221.3'
  sha256 'be7f67e2d4e21351dcb8a6f935ec975a23b0b54e'

  url "http://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  homepage 'http://www.jetbrains.com/dbe/'

  app '0xDBE EAP.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/0xDBE\ EAP.app/Contents/Info.plist"
  end
end
