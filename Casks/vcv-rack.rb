cask 'vcv-rack' do
  version '1.1.2'
  sha256 'd6b43853aaaf31e6306a915d836f7c620ee348f8bb341f9ea0be6e33b2e8afc6'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
