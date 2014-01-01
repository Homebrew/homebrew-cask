class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.2.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.4.2'
  sha1 '5d3ad8df7b64695f211eb30cc7db17e670af3493'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
