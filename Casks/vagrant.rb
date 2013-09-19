class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/Vagrant-1.3.3.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.3'
  sha1 '4787ce0786558b7b2b21577dbe7da7694b3caa4b'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
