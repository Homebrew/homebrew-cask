class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.8/VirtualBox-4.3.8-92456-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.8-92456'
  sha256 '2c9d9e9e96b91365cc7d8cd4d0211d0db5fc39d71c297359c6143956b1673f15'
  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
