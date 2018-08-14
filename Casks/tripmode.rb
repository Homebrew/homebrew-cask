cask 'tripmode' do
  version '2.1.4-743'
  sha256 'd72d4a37696fc927dbfab52420e6ac56d73860eb6d59e31586edd5a0c9802f92'

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
