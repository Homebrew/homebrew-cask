class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/22b76517d6ccd4ef232a4b4ecbaa276aff8037b8/Vagrant-1.2.6.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.2.6'
  sha1 '5f3e1bc5761b41e476bc8035f5ba03d42c0e12f0'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
