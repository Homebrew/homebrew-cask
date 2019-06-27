cask 'vcv-rack' do
  version '1.1.0'
  sha256 'd98a494c0259b0a1e1f6e9bada29318ef251bdd1922a884320958c3a1c9f42c3'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
