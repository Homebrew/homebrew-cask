cask :v1 => 'tripmode' do
  version :latest
  sha256 :no_check

  url 'https://tripmode.ch/TripMode.pkg'
  name 'TripMode'
  appcast 'http://updates.tripmode.ch/app/appcast.xml'
  homepage 'https://www.tripmode.ch/'
  license :freemium

  pkg 'TripMode.pkg'

  depends_on :macos => '>= :yosemite'

  uninstall :pkgutil => 'ch.tripmode.pkg.TripMode'

  zap :delete => '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
