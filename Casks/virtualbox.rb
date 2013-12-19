class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.6-91406'
  sha1 'b268e52552449304ba8021687645a6f9d7d18920'
  install 'VirtualBox.pkg'
  uninstall :script => 'VirtualBox_Uninstall.tool', :args => %w[--unattended]
end
