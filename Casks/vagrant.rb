cask 'vagrant' do
  version '2.1.1'
  sha256 '9d1798396f05b8c39f65f1e7878f088302546a5baa59846fbf461589d76e3e1f'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast 'https://github.com/hashicorp/vagrant/releases.atom',
          checkpoint: '7250082af1d3bcc5f7db5046b1815a3eea721a950003ac8054e0a662a1844af3'
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
