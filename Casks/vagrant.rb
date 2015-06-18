cask :v1 => 'vagrant' do
  version '1.7.2'
  sha256 '78d02afada2f066368bd0ce1883f900f89b6dc20f860463ce125e7cb295e347c'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
