class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.3.2/VirtualBox-4.3.2-90405-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.3.2-90405'
  sha1 '0c5816dada6a106a1eae4bde834f3e1863d2611d'
  install 'VirtualBox.pkg'
  uninstall :script => 'VirtualBox_Uninstall.tool', :args => %w[--unattended]
end
