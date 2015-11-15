cask :v1 => 'vagrant' do
  version '1.7.4'
  sha256 '3d2e680cc206ac1d480726052e42e193eabce56ed65fc79b91bc85e4c7d2deb8'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
