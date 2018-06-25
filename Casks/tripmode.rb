cask 'tripmode' do
  version '2.1.1-595'
  sha256 '533d6696b17e1571c080f57f5ae80f00370be22ff61e2e35657eb1a19c0201b1'

  url "https://www.tripmode.ch/app/TripMode-#{version}-app-Release.dmg"
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
