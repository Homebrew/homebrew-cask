class Virtualbox < Cask
  version '4.3.14-95030'
  sha256 'c89b22f3e5ba5d93ccf762c5922c1f21d2c4e7c21b9487d892ac0516d6f4d55a'

  url "http://download.virtualbox.org/virtualbox/#{version.gsub(/-.*/, '')}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'

  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
