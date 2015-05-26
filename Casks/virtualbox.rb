cask :v1 => 'virtualbox' do
  version '4.3.28-100309'
  sha256 '16ef55298abe5de8cd0e9ac88895d6404cde5a17d9aa126f8860c411c4eeeac2'

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
