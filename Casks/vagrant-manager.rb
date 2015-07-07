cask :v1 => 'vagrant-manager' do
  version '2.4.1'
  sha256 'ce01f4be6f0d6d514a74aa2fa0313b8b4b50de087610161ec1da6d472f9b8203'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
