cask 'vagrant' do
  version '1.8.3'
  sha256 'c510dcbc02ef7896674c25b62ae3c3342141575a93ae635a8da95b98c0268a06'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'c33cc8825d35e12e948df9efee0842a5735e059244c876b032dd46f4d5e9cac3'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
