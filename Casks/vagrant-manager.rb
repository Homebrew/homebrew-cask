cask :v1 => 'vagrant-manager' do
  version '2.3.0'
  sha256 'a9d308999a03b39658546c122e55580fdcbda7d3acd0b9ce0228cd3bcad053bf'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml',
          :sha256 => '706d0efbb0f4cad1fb74c7ae2ce7b0c2cfed40c7d82881b418e2df014f9fd730'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
