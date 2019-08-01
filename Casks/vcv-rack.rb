cask 'vcv-rack' do
  version '1.1.3'
  sha256 '80de61ee62994aeab016170832792e10ecb20dc0275258f7cfc1d48c7246c3e7'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
