cask 'vagrant' do
  version '1.8.5'
  sha256 'f12879c4890c39ec49af95153a6151b19fd137cbdccf7db22470f31464b9dd56'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'c483a3c39832e1df793662c0415291fd0f6494f2c9bf5696cabc1666ef90579e'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
