cask 'wireless-transfer' do
  version :latest
  sha256 :no_check

  url 'http://www.wirelesstransferapp.com/wirelesstransferapp-intel.dmg'
  name 'Wireless Transfer App'
  homepage 'http://www.wirelesstransferapp.com'
  license :gratis

  app 'Wireless Transfer App.app'
end
