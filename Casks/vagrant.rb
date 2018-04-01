cask 'vagrant' do
  version '2.0.2'
  sha256 'c5dd5b8c7193844a6cc5b6f79b0c878cd144f1eebbac72ad70de0f3cfdb31d93'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/hashicorp/vagrant/releases.atom',
          checkpoint: '10e5c87eb8ace1e0df7b9b6f376cb145ff1292d9ad22da40f38409db458d3e27'
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
