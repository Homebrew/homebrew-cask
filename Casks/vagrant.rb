cask 'vagrant' do
  version '2.0.3'
  sha256 '4ccdd7530a4b0172339c84a61a22bf7868c9fd1d173e7b510cf21f6deb26776e'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/hashicorp/vagrant/releases.atom',
          checkpoint: '15e49f1530c8501e14b361a4a2eba290bbcd2b32b402cc002035e30455938519'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'vagrant.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },
            pkgutil: 'com.vagrant.vagrant'

  zap trash: '~/.vagrant.d'
end
