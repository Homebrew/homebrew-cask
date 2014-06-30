class VagrantManager < Cask
  version '1.5.2'
  sha256 '8b694afb8774e83088d317e18e679199ddb17bace499d519ba81d6ef4c7d7be3'

  url 'https://github.com/lanayotech/vagrant-manager/releases/download/1.5.2/vagrant-manager-1.5.2.dmg'
  appcast 'http://api.lanayo.com/appcast/vagrant_manager.xml'
  homepage 'http://vagrantmanager.com/'

  link 'Vagrant Manager.app'
end
