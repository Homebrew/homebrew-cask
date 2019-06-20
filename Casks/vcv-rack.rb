cask 'vcv-rack' do
  version '1.0.0'
  sha256 'd6ddb5abaae7de6ff5d47df95fd5e49ade6d168fe8685799b79abe457c151273'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
