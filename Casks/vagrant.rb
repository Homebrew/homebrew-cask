class Vagrant < Cask
  version '1.6.5'
  sha256 'a94a16b9ed5f63460f64110738067aea029238f8d826c8dd90c5c34615a5be1e'

  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5.dmg'
  homepage 'http://www.vagrantup.com'

  pkg 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
