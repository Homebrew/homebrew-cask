cask :v1 => 'virtualbox' do
  version '4.3.26-98988'
  sha256 '3efddddbed7648d5bdfe11a7a341591d05135cda7298792d93334a5faa83d124'

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
