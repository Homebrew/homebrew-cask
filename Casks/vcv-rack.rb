cask 'vcv-rack' do
  version '0.6.1'
  sha256 'a92197734652ae7cd5d40c361e5a656e9b051e0210253f0c32f44ed6aeb78e4a'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
