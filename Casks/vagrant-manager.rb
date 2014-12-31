cask :v1 => 'vagrant-manager' do
  version '2.1.2'
  sha256 '8510664b4834c98ed9b72baa30aae611f640ca2292725a8cd6ae6d99d412dd4b'

  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml',
          :sha256 => '3dbe30121d4f32c4d600e30d58d6cfea142d9510823be7a125952aa2e05ea3af'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
