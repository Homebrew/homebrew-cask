cask 'vagrant' do
  version '2.0.4'
  sha256 '105fb631d5ae29f9f01d9680f52ba31e63727fefd77f360df9e91a528c354d01'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/hashicorp/vagrant/releases.atom',
          checkpoint: '623a632723cdac4d06686439afa55f4c30385522340dfcd709ebaca504b5103b'
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
