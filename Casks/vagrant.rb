class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/Vagrant-1.2.7.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.2.7'
  sha1 '8b1486850b98aa0f679049671fc3f7c3e9ab40f9'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
