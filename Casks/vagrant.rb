cask 'vagrant' do
  version '1.9.8'
  sha256 '11b1bfac9e58d6189cd08d77e2943c89e0a6629f5a84abe1629f270813d5e818'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: '8e386a3c32f4bcf86112aefa93c8dfc5817981ccaf9ad64fb81e68e60689f794'
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
