cask 'vcv-rack' do
  version '1.1.5'
  sha256 '45b2d3c7c5a10c87f2662bdecd75311c78ac60291fb0b73e6d7ec90d67e6abbf'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
