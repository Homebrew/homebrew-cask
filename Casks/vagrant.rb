class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/9a394588a6dcf97e8f916da9564088fcf242c4b3/Vagrant-1.3.2.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.2'
  sha1 '3d0dcd4d25fefb25f8914428eeb4299b7cecf7b0'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
