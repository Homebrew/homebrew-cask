cask 'vcv-rack' do
  version '0.5.1'
  sha256 '467394bea5fa001a797cfbba11e78a8c2a88e37cd3263380cd6d4498e4f9945b'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
