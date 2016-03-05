cask 'vagrant-manager' do
  version '2.5.3'
  sha256 'c2780c3560f7f27a0a87fa01983ec329ed13b7cb139515cf70415ae959b99562'

  # github.com/lanayotech/vagrant-manager was verified as official when first introduced to the cask
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom',
          checkpoint: '1a416ac6a40fa013b7876d9d02acbe17c7a0988b780bca0baafd8d6fcba45099'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'
  license :mit

  app 'Vagrant Manager.app'
end
