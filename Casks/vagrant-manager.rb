cask :v1 => 'vagrant-manager' do
  version '2.2.1'
  sha256 'c9d63396cb322c65573a3a0c54dd700db18cff736b0f8b21a7813ac51d6ea5dd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml',
          :sha256 => '599d9d60e76b718094569353ddd31850cdd3efaed6de61d320f53e7bf83073fb'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
