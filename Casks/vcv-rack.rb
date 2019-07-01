cask 'vcv-rack' do
  version '1.1.1'
  sha256 '75d9230033edfedf3fe8e091e71cb93182a20770e129a39cc106cef13834a3de'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
