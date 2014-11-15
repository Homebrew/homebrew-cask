cask :v1 => 'zeroxdbe-eap' do
  version '138.2221.3'
  sha256 'fc88c53d55fa13330421aebf77c0fb136eaa3e6ccff8e08ed577e51c53195fba'

  url "http://download.jetbrains.com/dbe/0xdbe-#{version}.dmg"
  homepage 'http://www.jetbrains.com/dbe/'
  license :unknown

  app '0xDBE EAP.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/0xDBE\ EAP.app/Contents/Info.plist"
  end
end
