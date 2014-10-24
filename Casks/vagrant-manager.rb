class VagrantManager < Cask
  version '2.0.1'
  sha256 '690cdc1649255b0d4c54636548f834c77d0b9f1705383380a99bbc46b9e7b3f3'

  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml',
          :sha256 => '9227c9784af8939aad0e7e0ddec0b748fbd463b464ece0f6dbb9c14240640b34'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
