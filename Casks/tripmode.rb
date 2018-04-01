cask 'tripmode' do
  version '2.1.1-595'
  sha256 '533d6696b17e1571c080f57f5ae80f00370be22ff61e2e35657eb1a19c0201b1'

  url "https://www.tripmode.ch/app/TripMode-#{version}-app-Release.dmg"
  appcast 'https://www.tripmode.ch/app/appcast.xml',
          checkpoint: 'da80b5877de1d7190298dbe7e253315b4d755c263a0af61012007905352308b1'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'

  depends_on macos: '>= :yosemite'

  app 'TripMode.app'

  zap trash: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
