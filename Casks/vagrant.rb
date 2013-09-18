class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/9a394588a6dcf97e8f916da9564088fcf242c4b3/Vagrant-1.3.2.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.2'
  sha1 '0bd2fb82d31753eadd3aaacd0c457d6144b63613'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
