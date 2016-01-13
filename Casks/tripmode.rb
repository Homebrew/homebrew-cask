cask 'tripmode' do
  version :latest
  sha256 :no_check

  url 'https://tripmode.ch/TripMode.pkg'
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          :checkpoint => '0f25f5cc446f79572e81ef2a5d29ff277eb1a1769d4aef0922030aeffdf045c0'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'
  license :freemium

  depends_on :macos => '>= :yosemite'

  pkg 'TripMode.pkg'

  uninstall :pkgutil => 'ch.tripmode.pkg.TripMode'

  zap :delete => '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
