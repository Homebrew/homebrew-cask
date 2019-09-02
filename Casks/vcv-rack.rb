cask 'vcv-rack' do
  version '1.1.4'
  sha256 'a2b7971f35a0c742eea6fb350cbc130b27645e9e2cdd6c9b76870f845b4f20fa'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
