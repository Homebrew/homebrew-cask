cask 'vagrant' do
  version '1.9.1'
  sha256 '17191ff7a1d796aa89c558b45c706288275dade6a65e2b219c2efa0e54c02ef7'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: 'd3d0452d55c76d71c91b71ff2026b16e6acb61b7662adf9f36c284bcc50d5726'
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
