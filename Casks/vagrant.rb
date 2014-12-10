cask :v1 => 'vagrant' do
  version '1.7.0'
  sha256 '2b3d7cf0d2490e1f1d4f7ad13e2caf44a50cec33419a6ea281f3e5c693da7e8d'

  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  homepage 'http://www.vagrantup.com'
  license :unknown

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
