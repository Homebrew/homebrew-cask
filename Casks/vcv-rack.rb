cask 'vcv-rack' do
  version '0.6.0'
  sha256 '57ea082302e3e6a6f1f680893c126677e683961c9078c267111fcd67fb915942'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
