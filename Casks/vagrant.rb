cask 'vagrant' do
  version '1.8.1'
  sha256 '2cfdbeec9e40376e49dae9d9f27511896e3b296f0e24f8731339bb3d32c48c93'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
