cask 'vagrant' do
  version '1.8.1'
  sha256 '2cfdbeec9e40376e49dae9d9f27511896e3b296f0e24f8731339bb3d32c48c93'

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
