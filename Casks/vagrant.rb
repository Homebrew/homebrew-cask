cask 'vagrant' do
  version '1.8.4'
  sha256 'c124089c1b800e480d5777c5ef344c2731853dd237d7c70220245fafa3051fbd'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'd816c6e1d4281eecbe7a87268c6edd264dafdf285c5c0adb90d52ce96a427d57'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
