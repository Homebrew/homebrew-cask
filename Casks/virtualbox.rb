class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.6-91406'
  sha256 '60678b7cc7dc741b800cfc99c7ff73a185c548af877071eb82422f354e76bca2'
  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
