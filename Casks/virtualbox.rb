class Virtualbox < Cask
  version '4.3.12-93733'
  sha256 'a9d9e3b3217177bc175839747de663ba25886f71e97a9c35ad802f618f11e23e'

  url 'http://download.virtualbox.org/virtualbox/4.3.12/VirtualBox-4.3.12-93733-OSX.dmg'
  homepage 'http://www.virtualbox.org'

  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
