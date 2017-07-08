cask 'vagrant' do
  version '1.9.7'
  sha256 '3ebb9bf1f7d7bb947da52c33cb540750156f4a9ba1c1697c07bb9317d42ea503'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'e2c4859e876a81fa46e17359d452a26f250ee859e43c5265c2a19ab88b376644'
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
