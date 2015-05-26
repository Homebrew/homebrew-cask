cask :v1 => 'vagrant-manager' do
  version '2.4.0'
  sha256 'f4ecf12add7a60bd9ca61f4f806a0f16e82ea0e6e0f5913fa6d10fad9bdb4a03'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
