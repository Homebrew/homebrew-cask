class Vagrant < Cask
  url 'http://files.vagrantup.com/packages/b12c7e8814171c1295ef82416ffe51e8a168a244/Vagrant-1.3.1.dmg'
  homepage 'http://www.vagrantup.com'
  version '1.3.1'
  sha1 'ffe084cb333d8cecd7dad7c0c1b6ad7436a5cca0'
  install 'Vagrant.pkg'
  uninstall :script => 'uninstall.tool', :input => %w[Yes]
end
