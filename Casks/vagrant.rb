cask 'vagrant' do
  version '1.9.5'
  sha256 'ac16217b114d8816264700e41114b62acd0c071d2699ae13954086ae3fcb151c'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: '0e748c3d3565674755733283f882e3e1899ea4134292877aa2a8275fca66d08f'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'vagrant.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      %w[Yes],
                     },
            pkgutil: 'com.vagrant.vagrant'

  zap trash: '~/.vagrant.d'
end
