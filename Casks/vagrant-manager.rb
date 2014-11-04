class VagrantManager < Cask
  version '2.1.0'
  sha256 '641fc90960eb919cfaf7a70f90a6f9192cb56621454bbf5330ac312dace982cf'

  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml',
          :sha256 => '9227c9784af8939aad0e7e0ddec0b748fbd463b464ece0f6dbb9c14240640b34'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
