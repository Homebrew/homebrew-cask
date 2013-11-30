class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.4/VirtualBox-4.3.4-91027-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.4-91027'
  sha1 '3583f2198940ff6461a526305d3c49a0638845bc'
  install 'VirtualBox.pkg'
  uninstall :script => 'VirtualBox_Uninstall.tool', :args => %w[--unattended]
end
