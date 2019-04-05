cask 'timings' do
  version '3.2.7'
  sha256 '4783920f55445716769be9b91808fe82ad9449e15c0f0c1d102a28892dce4042'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php"
  name 'Timings'
  homepage 'https://www.mediaatelier.com/Timings3/'

  app 'Timings.app'

  zap trash: [
               '~/Library/Preferences/com.mediaateller.Timings.plist',
               '~/Library/Application Support/Timings',
               '~/Library/Caches/com.mediaateller.timings',
             ]
end
