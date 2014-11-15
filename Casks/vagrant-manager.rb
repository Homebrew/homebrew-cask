cask :v1 => 'vagrant-manager' do
  version '2.1.1'
  sha256 'bd4a44c82c4d2ffa2d9de3d9f924eb5eeb76ac133648de939668501a2deb021b'

  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml',
          :sha256 => '9227c9784af8939aad0e7e0ddec0b748fbd463b464ece0f6dbb9c14240640b34'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
