cask :v1 => 'virtualbox' do
  version '4.3.18-96516'
  sha256 'a0c6a9a9455397a929150065b2883714a1dd630f63ef88b8d8cf527944becfc6'

  url "http://download.virtualbox.org/virtualbox/#{version.gsub(/-.*/, '')}/VirtualBox-#{version}-OSX.dmg"
  homepage 'http://www.virtualbox.org'
  license :unknown

  pkg 'VirtualBox.pkg'
  uninstall :script => { :executable => 'VirtualBox_Uninstall.tool', :args => %w[--unattended] },
            :pkgutil => 'org.virtualbox.pkg.*'
end
