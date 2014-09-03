class Vagrant < Cask
  version '1.6.4'
  sha256 '21f556c75765bce280eeb1ed5059b7c36f5397f0aec2393862ef0b21b03b16d8'

  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.4.dmg'
  homepage 'http://www.vagrantup.com'

  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
