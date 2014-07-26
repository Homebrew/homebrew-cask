class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant-1.3.5.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.5'
  sha1 'c123b4f80abd9cec83f7499d8dc2bc60b850b882'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
