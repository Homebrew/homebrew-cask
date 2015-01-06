cask :v1 => 'vagrant' do
  version '1.7.2'
  sha256 'b05c13675118a7c57ef78f932047f3db44456fff3edb408615fea0ba2cf7afe9'

  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  homepage 'http://www.vagrantup.com'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
