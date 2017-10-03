cask 'vagrant-manager' do
  version '2.5.4'
  sha256 '9ad9d9f5d6eca2ef0f4493004f06acc6862701b1b731fe20ddbc7c5970079824'

  # github.com/lanayotech/vagrant-manager was verified as official when first introduced to the cask
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom',
          checkpoint: 'a6d3c3340cdfba7d45050e104530e7ad480d378975bf8217b8daa9863d92da9e'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'

  app 'Vagrant Manager.app'

  zap delete: '~/Library/Caches/lanayo.Vagrant-Manager',
      trash:  '~/Library/Preferences/lanayo.Vagrant-Manager.plist'
end
