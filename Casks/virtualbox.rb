class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.10-93012'
  sha256 '8bf24a7afbde0cdb560b40abd8ab69584621ca6de59026553f007a0da7b4d443'
  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
