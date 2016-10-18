cask 'vagrant' do
  version '1.8.6'
  sha256 'b916cd103c91faf57b63b49188e4cd09136f81385ff05d62e55b68c87b53a2d9'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'b3e2ff8f8556294139653183d7e7cf47e572d2148c4ae2910d99920353042574'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
