cask 'vagrant' do
  version '1.9.4'
  sha256 '2ae186e762498c8e018efbf3452a3d368627cb7d518b26f3f445f0a3686e5a07'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'd9d8ab9e8e0f7f4c520200b2097744b7c46b66908da21432bfc463789602acf7'
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
