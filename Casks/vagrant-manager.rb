cask 'vagrant-manager' do
  version '2.5.1'
  sha256 '3056e833b9399fbb0b1d2b834ee19597f56c492ab79d222ec4a607f75d566fb6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom',
          checkpoint: '999bd2fd5a8eeae2a819f71523843c2ad139b4ca5576832ed1f4f9a18e547472'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
