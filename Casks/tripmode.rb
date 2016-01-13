cask 'tripmode' do
  version :latest
  sha256 :no_check

  url 'https://tripmode.ch/TripMode.pkg'
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          :checkpoint => '17050527bb387e74b051dab31e15b36ffe99b0c3a3ab138afa417a555221d362'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'
  license :freemium

  depends_on :macos => '>= :yosemite'

  pkg 'TripMode.pkg'

  uninstall :pkgutil => 'ch.tripmode.pkg.TripMode'

  zap :delete => '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
