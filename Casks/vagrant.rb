cask 'vagrant' do
  version '1.9.2'
  sha256 'ee0549a16859042d39c08ae153895da6cdfbad7c587b3438349cdf01efe10703'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'b66330f0e370b55df9091a59231978e239d897a65b4f0cebcecc5b4303cc622d'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'Vagrant.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      %w[Yes],
                     },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
