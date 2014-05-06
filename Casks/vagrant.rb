class Vagrant < Cask
  url 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.0.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.6.0'
  sha256 '6d6a77a9180f79a1ac69053c28a7cb601b60fe033344881281bab80cde04bf71'
  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] }
end
