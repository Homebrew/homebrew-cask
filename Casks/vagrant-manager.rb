cask 'vagrant-manager' do
  version '2.5.4'
  sha256 '9ad9d9f5d6eca2ef0f4493004f06acc6862701b1b731fe20ddbc7c5970079824'

  # github.com/lanayotech/vagrant-manager was verified as official when first introduced to the cask
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom',
          checkpoint: '45ea6d317d36c8244cb17c7b60d4a138adcabe2553c544edca13ab6d0ccfc2f2'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'

  app 'Vagrant Manager.app'

  zap delete: '~/Library/Preferences/lanayo.Vagrant-Manager.plist'
end
