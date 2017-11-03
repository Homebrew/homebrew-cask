cask 'vagrant' do
  version '2.0.1'
  sha256 '955fca5295be41a6a7dbb2a49f2ce0a8c14bc1fc598fcd196d1a8631932c1906'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/hashicorp/vagrant/releases.atom',
          checkpoint: 'e8da4166b284937d88fcddffa4aec661a6821521db9c679442f47dbf714b3a3b'
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
