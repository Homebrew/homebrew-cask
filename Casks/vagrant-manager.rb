class VagrantManager < Cask
  version '2.0.1'
  sha256 '690cdc1649255b0d4c54636548f834c77d0b9f1705383380a99bbc46b9e7b3f3'

  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml'
  homepage 'http://vagrantmanager.com/'

  link 'Vagrant Manager.app'
end
