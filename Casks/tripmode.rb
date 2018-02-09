cask 'tripmode' do
  version '2.1.1-595'
  sha256 '533d6696b17e1571c080f57f5ae80f00370be22ff61e2e35657eb1a19c0201b1'

  url "https://www.tripmode.ch/app/TripMode-#{version}-app-Release.dmg"
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          checkpoint: '1c589ebad8ed5f9c36a702b070882b73612030eb42bd23587d2106c1399d5e8e'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'

  depends_on macos: '>= :yosemite'

  app 'TripMode.app'

  zap trash: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
