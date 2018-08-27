cask 'vcv-rack' do
  version '0.6.2b'
  sha256 '59bd6002ce861254c04e3e5dbc6892cc3f55d73d595f1f4f0b906214a977bb67'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
