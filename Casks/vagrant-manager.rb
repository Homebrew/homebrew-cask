cask :v1 => 'vagrant-manager' do
  version '2.4.2'
  sha256 '785a20f21e27bb79cf528b60b9be2bf431937daed99e2047c2414580c3b47ff0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
