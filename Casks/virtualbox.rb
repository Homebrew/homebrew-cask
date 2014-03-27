class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.10-92995'
  sha256 '531b011ce1c19a44d56d76a11c2d9300b3949f8840ee113998607a7626bdd754'
  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
