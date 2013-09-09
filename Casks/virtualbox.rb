class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88780-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.2.18-88780'
  sha1 '2a0f6e48783ec85cccd8027684ddc4ed2da23392'
  install 'VirtualBox.pkg'
  uninstall :script => 'VirtualBox_Uninstall.tool', :args => %w[--unattended]
end
