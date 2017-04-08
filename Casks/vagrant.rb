cask 'vagrant' do
  version '1.9.3'
  sha256 '7e08c3d204420027142d6623d2b02c5ec00f635a74b4ca7fb742e91894b942b8'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'a9c114d971fe858046d14efd014add93c0be9431b3be26a648f9c219fef4b540'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'vagrant.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      %w[Yes],
                     },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
