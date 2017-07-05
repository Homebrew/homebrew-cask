cask 'vagrant' do
  version '1.9.6'
  sha256 'bf3ed196cc12f9906d1d1dbe38c297d42e1de318f1ac0f7eb720894af9519141'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'c459223d93951b2bdbdd1ff9b8ed09e098dc6377e60f90d241e138b0b8ffd0c1'
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
