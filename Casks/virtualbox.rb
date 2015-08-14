cask :v1 => 'virtualbox' do
  version '5.0.2-102096'
  sha256 '34b7ce2417140f21eaa2687ed0212c7e667746408afdcbeae3051a84e17a90ca'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*},'')}/VirtualBox-#{version}-OSX.dmg"
  name 'VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl
  tags :vendor => 'Oracle'

  pkg 'VirtualBox.pkg'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxManage'
  binary '/Applications/VirtualBox.app/Contents/MacOS/VBoxHeadless'

  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] },
            :pkgutil => 'org.virtualbox.pkg.*'
end
