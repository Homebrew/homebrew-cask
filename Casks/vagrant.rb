cask :v1 => 'vagrant' do
  version '1.7.3'
  sha256 '3c6078d8ce9a9c01589b089034f0afcbe2f4908a7f77a1471360fc8011a18dc8'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
