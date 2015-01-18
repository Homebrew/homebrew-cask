cask :v1 => 'virtualbox' do
  version '4.3.20-96996'
  sha256 '744e77119a640a5974160213c9912568a3d88dbd06a2fc6b6970070941732705'

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
