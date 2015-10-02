cask :v1 => 'virtualbox' do
  version '5.0.6-103037'   # virtualbox.rb and virtualbox-extension-pack.rb should be upgraded together
  sha256 '612e73aafa3dcdcf99e69e8831fb526512a4e4f8d02a0f4ac9d05baee09bb452'

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
