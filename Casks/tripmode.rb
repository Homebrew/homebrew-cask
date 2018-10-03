cask 'tripmode' do
  version '2.2.0-777'
  sha256 '72274492605661a90e9fdfe0eea06c13fc045f59ff210aa846497b4454b7eac2'

  url "https://www.tripmode.ch/app/TripMode-#{version}-app.dmg"
  appcast 'https://www.tripmode.ch/app/appcast.xml'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'

  depends_on macos: '>= :yosemite'

  app 'TripMode.app'

  uninstall signal:    ['TERM', 'ch.tripmode.TripMode'],
            launchctl: [
                         'ch.tripmode.nke.TripMode',
                         'ch.tripmode.TripMode.HelperTool',
                       ],
            delete:    '/Library/PrivilegedHelperTools/ch.tripmode.TripMode.HelperTool'

  zap trash: [
               '/Library/Application Support/Tripmode',
               '~/Library/Application Support/Tripmode',
               '~/Library/Caches/ch.tripmode.TripMode',
               '~/Library/Preferences/ch.tripmode.TripMode.plist',
             ]
end
