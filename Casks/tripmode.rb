cask 'tripmode' do
  version '2.0.1-492'
  sha256 '03ff98645a6512b9f2dba8f05d4e6437340b1a2eeea0701dafdea2213d511317'

  url "https://www.tripmode.ch/app/TripMode-#{version}-app.dmg"
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          checkpoint: '1c589ebad8ed5f9c36a702b070882b73612030eb42bd23587d2106c1399d5e8e'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'

  depends_on macos: '>= :yosemite'

  app 'TripMode.app'

  zap delete: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
