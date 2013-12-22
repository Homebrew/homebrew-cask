class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.1.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.4.1'
  sha1 '54a1ad09a99e79a59706bc7b0f0bfd8170786cbf'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
