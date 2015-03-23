cask :v1 => 'wirelesstransferapp' do
  version :latest
  sha256 '78a59f55e3342ba20b835719e193690fac93b37b57cb782e9f8aa95e32e056b3'

  url 'http://www.wirelesstransferapp.com/wirelesstransferapp-intel.dmg'
  name 'Wireless Transfer App'
  homepage 'http://www.wirelesstransferapp.com'
  license :freemium

  app 'Wireless Transfer App.app'
end
