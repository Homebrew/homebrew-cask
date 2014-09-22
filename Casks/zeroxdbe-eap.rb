class ZeroxdbeEap < Cask
  version '138.1400.3'
  sha256 '1f16618a29f004e5e846d6a7ccfa3afa2115886b94294b71c28781427a9589b5'

  url 'http://download.jetbrains.com/dbe/0xdbe-138.1400.3.dmg'
  homepage 'http://www.jetbrains.com/dbe/'

  app '0xDBE EAP.app'

  postflight do
    system "/usr/libexec/PlistBuddy", "-c", "Set :JVMOptions:JVMVersion 1.6+", "#{destination_path}/0xDBE\ EAP.app/Contents/Info.plist"
  end
end
