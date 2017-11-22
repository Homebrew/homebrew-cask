cask 'vcv-rack' do
  version '0.5.0'
  sha256 'f3e4a6aaea6da231318be91b830fd11eebed02f17f00c3b896db99073fe32e90'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
