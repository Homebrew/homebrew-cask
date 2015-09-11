cask :v1 => 'vagrant-manager' do
  version '2.4.4'
  sha256 'fc39e54aabde28eb06b620b79a08410997215caa19084ec57c2273658f15df43'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
