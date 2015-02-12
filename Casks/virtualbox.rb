cask :v1 => 'virtualbox' do
  version '4.3.22-98236'
  sha256 '886d0e6d17ee09cc1f48d7319257d597ed35428237a4d0d2305a7e03347b717d'

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
