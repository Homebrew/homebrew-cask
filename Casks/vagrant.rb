cask 'vagrant' do
  version '1.8.0'
  sha256 'ed9415e6d55a3c44863eb75817219fda752ff8ca087e7980fbb6539e8a9077dd'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
