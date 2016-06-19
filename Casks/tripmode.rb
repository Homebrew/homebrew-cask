cask 'tripmode' do
  version '1.0.6-249'
  sha256 'f828a6a9a0fbc9d9d0905d8fdfecd2dd631e4cffcfa9426151376c73f8e429dc'

  url "https://www.tripmode.ch/app/TripMode-#{version}.dmg"
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          checkpoint: 'ba476a0313b9dc5cb8bbc00dde0f623186979214092c592a9ffab925d354a618'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'
  license :freemium

  depends_on macos: '>= :yosemite'

  pkg 'TripMode.pkg'

  uninstall pkgutil: 'ch.tripmode.pkg.TripMode'

  zap delete: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
