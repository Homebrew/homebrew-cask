cask 'tripmode' do
  version :latest
  sha256 :no_check

  url 'https://tripmode.ch/TripMode.pkg'
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          :sha256 => '61c10ba3fec1b0cc235bb907ef1fe820856da2d151ab01dd92caafb546729623'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'
  license :freemium

  depends_on :macos => '>= :yosemite'

  pkg 'TripMode.pkg'

  uninstall :pkgutil => 'ch.tripmode.pkg.TripMode'

  zap :delete => '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
