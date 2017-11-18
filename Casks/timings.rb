cask 'timings' do
  version '3.0.10'
  sha256 '811881dd74eae12f7b6ca8a8c61e9702b07433764c19488cb2588533c0b85f9a'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: '5161234ff54c8ee3a9082a438b68a4489bd6ea4653a1122669b8ae091c95ab56'
  name 'Timings'
  homepage 'https://www.mediaatelier.com/Timings3/'

  depends_on macos: '>= :mavericks'

  app 'Timings.app'

  zap trash: [
               '~/Library/Preferences/com.mediaateller.Timings.plist',
               '~/Library/Application Support/Timings',
               '~/Library/Caches/com.mediaateller.timings',
             ]
end
