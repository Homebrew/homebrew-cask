cask 'tripmode' do
  version '1.0.7-252'
  sha256 'de12167df44b18463fb1a85d487b857137f89fbc481a72d9d8272510f4773795'

  url "https://www.tripmode.ch/app/TripMode-#{version}.dmg"
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          checkpoint: '1c589ebad8ed5f9c36a702b070882b73612030eb42bd23587d2106c1399d5e8e'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'

  depends_on macos: '>= :yosemite'

  pkg 'TripMode.pkg'

  uninstall pkgutil: 'ch.tripmode.pkg.TripMode'

  zap delete: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
