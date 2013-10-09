class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/0ac2a87388419b989c3c0d0318cc97df3b0ed27d/Vagrant-1.3.4.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.4'
  sha1 'c4e52fd9029e3674720af51075b816f0b29f5a97'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
