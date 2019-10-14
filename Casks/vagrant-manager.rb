cask 'vagrant-manager' do
  version '2.7.0'
  sha256 'e2bc635e7e0f2ddca1fde8279a775f3ca8615144dff71a2b0b0f4d3b0f640936'

  # github.com/lanayotech/vagrant-manager was verified as official when first introduced to the cask
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/Vagrant.Manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'

  app 'Vagrant Manager.app'

  uninstall quit: 'lanayo.Vagrant-Manager'

  zap trash: [
               '~/Library/Caches/lanayo.Vagrant-Manager',
               '~/Library/Preferences/lanayo.Vagrant-Manager.plist',
             ]
end
