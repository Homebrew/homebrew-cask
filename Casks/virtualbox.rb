class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-92957-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.10-92957'
  sha256 'd670d21aba203a6732270f4765854683d1c206bb43e57fc90953594a0f6f3247'
  install 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
