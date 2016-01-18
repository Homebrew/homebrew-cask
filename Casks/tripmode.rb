cask 'tripmode' do
  version '1.0.4-237'
  sha256 '6d8de5a9c0266e88065ed53e94eb108e156452c2ede3877eaf84348c7aeccdf6'

  url "https://www.tripmode.ch/app/TripMode-#{version}.dmg"
  appcast 'http://updates.tripmode.ch/app/appcast.xml',
          checkpoint: '17050527bb387e74b051dab31e15b36ffe99b0c3a3ab138afa417a555221d362'
  name 'TripMode'
  homepage 'https://www.tripmode.ch/'
  license :freemium

  depends_on macos: '>= :yosemite'

  pkg 'TripMode.pkg'

  uninstall pkgutil: 'ch.tripmode.pkg.TripMode'

  zap delete: '~/Library/Preferences/ch.tripmode.TripMode.plist'
end
