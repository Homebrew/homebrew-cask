cask 'tripmode' do
  version '2.1.4-742'
  sha256 '425e8b268472b800687067e7637fabbfa6450b52ad66720bca6025891cfcbc1b'

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
