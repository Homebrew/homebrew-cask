cask 'vagrant' do
  version '1.8.7'
  sha256 '14d68f599a620cf421838ed037f0a1c4467e1b67475deeff62330a21fda4937b'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: '8d16ac5df154d7b39604d9f6505b17394cdc45205c6a75a1bac8d9ff39cc2f06'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'Vagrant.pkg'

  # Vagrant 1.8.7 ships with a broken embedded curl. Removing it causes vagrant
  # to fall back to the system-installed curl, which works.
  # https://github.com/mitchellh/vagrant/issues/7969
  postflight do
    system_command '/bin/rm',
                   args: ['/opt/vagrant/embedded/bin/curl'],
                   sudo: true
  end

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
