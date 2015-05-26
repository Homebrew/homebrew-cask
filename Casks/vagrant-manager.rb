cask :v1 => 'vagrant-manager' do
  version '2.3.0'
  sha256 'a9d308999a03b39658546c122e55580fdcbda7d3acd0b9ce0228cd3bcad053bf'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
