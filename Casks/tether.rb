cask 'tether' do
  version '1.7.1'
  sha256 '7e775cbc7d45d526662db8eba4682adc214e344d2ee8713f78e98ad3cc807194'

  url "http://hellotether.com/downloads/Tether_v#{version}.zip"
  name 'Tether'
  homepage 'http://hellotether.com/'

  app 'Tether.app'
end
