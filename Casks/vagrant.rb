class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/0224c6232394680971a69d94dd55a7436888c4cb/Vagrant-1.3.0.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.0'
  sha1 '706d8f6b91e6010c0c5c606ad51c8f9d882f323d'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
