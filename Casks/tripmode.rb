cask 'tripmode' do
  version '2.2.1-782'
  sha256 '7320e3df3cee9298f70c658f2d556e2247ac7c600d3e272833eefe2b3c2d605b'

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
