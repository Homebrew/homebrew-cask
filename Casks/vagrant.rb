class Vagrant < Cask
  version '1.6.3'
  sha256 'ed1de41ca11a2251e4748a7a88fb46c3312780b7952f2248683f8ed2a007bc72'

  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3.dmg'
  homepage 'http://www.vagrantup.com'

  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
