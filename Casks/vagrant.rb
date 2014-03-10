class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.0.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.5.0'
  sha256 '55e703ff0d5e46c71dc61e03407d8774dc273a24e141dc5b73cccb7e9f02f778'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
