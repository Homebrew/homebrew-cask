cask 'vagrant' do
  version '1.8.3'
  sha256 'c510dcbc02ef7896674c25b62ae3c3342141575a93ae635a8da95b98c0268a06'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: '420b81d52032389f4159835fda75cd8d4d5cf0611ed7b238ba488ed2af3e9046'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
