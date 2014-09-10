class Virtualbox < Cask
  version '4.3.16-95972'
  sha256 '09bd6b352a425f199344092482ee0a72f398f784138810ef17b88d2aa30ad0c6'

  url "http://download.virtualbox.org/virtualbox/#{version.gsub(/-.*/, '')}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] }
end
