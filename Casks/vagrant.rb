cask 'vagrant' do
  version '2.1.0'
  sha256 'fbbec9a335ab69b1a2b5535bca59b49034bb38c592c05f0f70fc120e25f71a4d'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/hashicorp/vagrant/releases.atom',
          checkpoint: '5070575f4f0570fc9f0027721b4919870386afd8ee9df368f2642f668e4dc103'
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
