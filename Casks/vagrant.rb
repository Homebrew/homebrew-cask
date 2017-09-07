cask 'vagrant' do
  version '2.0.0'
  sha256 '596fba741f99a083eed9751973b4a3016c99de611165ca561922008d23008494'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'ffd65a83a3f2c2ee644ff9754a80675e169ccd6101642a7c2f6da9a93432e444'
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
