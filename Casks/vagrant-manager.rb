class VagrantManager < Cask
  version '1.5.5'
  sha256 '778815d9b5a41e30363f8ca652fc5964beb4fbca0691feaad2595e1382870762'

  url 'https://github.com/lanayotech/vagrant-manager/releases/download/1.5.5/vagrant-manager-1.5.5.dmg'
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml'
  homepage 'http://vagrantmanager.com/'

  link 'Vagrant Manager.app'
end
