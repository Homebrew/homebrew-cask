cask 'vagrant-manager' do
  version '2.5.4'
  sha256 '9ad9d9f5d6eca2ef0f4493004f06acc6862701b1b731fe20ddbc7c5970079824'

  # github.com/lanayotech/vagrant-manager was verified as official when first introduced to the cask
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom',
          checkpoint: '0d60d80f827a3ed3b2e1eed81dd899deb5a26a25ea8173c8a02dd144abe4f915'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'

  app 'Vagrant Manager.app'

  zap delete: '~/Library/Preferences/lanayo.Vagrant-Manager.plist'
end
