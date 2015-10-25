cask :v1 => 'vagrant-manager' do
  version '2.5.0'
  sha256 '2e6949ee6bafdb5f087ddf58446f8b48438684ddb11708838ae2897bb41b5232'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
