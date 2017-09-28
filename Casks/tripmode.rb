cask 'tripmode' do
  version '2.1.0-583'
  sha256 '98ccbe84fa054ce160c2ebe1823b7362605090a3330fb16ae21e41a9260d0353'

  url "https://www.tripmode.ch/app/TripMode-#{version}-app-Release.dmg"
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          checkpoint: '1c589ebad8ed5f9c36a702b070882b73612030eb42bd23587d2106c1399d5e8e'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'

  depends_on macos: '>= :yosemite'

  app 'TripMode.app'

  zap trash: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
