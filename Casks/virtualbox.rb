cask :v1 => 'virtualbox' do
  version '4.3.24-98716'
  sha256 'c6d629ca2f5a470b03c48849d2f6c991382c45da5c84255d3c73e78ad5200389'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(/-.*$/, '')}/VirtualBox-#{version}-OSX.dmg"
  name 'VirtualBox'
  homepage 'http://www.virtualbox.org'
  license :gpl
  tags :vendor => 'Oracle'

  pkg 'VirtualBox.pkg'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxManage'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxHeadless'

  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] },
            :pkgutil => 'org.virtualbox.pkg.*'
end
