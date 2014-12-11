cask :v1 => 'vagrant' do
  version '1.7.0'
  sha256 '1b228d79066938f879335ddb4dce69eb8954e7337a117104004854dc39c135b0'

  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  homepage 'http://www.vagrantup.com'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
