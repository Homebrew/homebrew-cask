class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.0/VirtualBox-4.3.0-89960-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.0-89960'
  sha1 '3cc3b714775c971a09478cdd5419c6eb6fdaebb0'
  install 'VirtualBox.pkg'
  uninstall :script => 'VirtualBox_Uninstall.tool', :args => %w[--unattended]
end
