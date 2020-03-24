cask 'thunderbird' do
  version '68.6.0'

  language 'cs' do
    sha256 '95c5fa8f8d28f4fc3a0f438578e116de071a989494852638e4c570afb2c6b7fb'
    'cs'
  end

  language 'de' do
    sha256 '4cf0e923994f063201a9efba9287bd66084f8b3c75103591f5bef11c137e6188'
    'de'
  end

  language 'en-GB' do
    sha256 'eb17e3c5aa3b2f81a1b793acae73edc3ea66dac96119fdfcf9da70c918be97ef'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9ee66822263f9a52c4e5ca64ea653028136d2c6f15879bd99ddf10f24649bca3'
    'en-US'
  end

  language 'fr' do
    sha256 '06961e6b7c8618b7a50913f425cdb5f538465b52d9a07402daeba6764f3024f4'
    'fr'
  end

  language 'gl' do
    sha256 'df6b68e79bb7b035dd8a8ccaa0b0897c2f34da1519ee6ba03ec36a53445b4b12'
    'gl'
  end

  language 'it' do
    sha256 '8d0225bf51a4a20b0b27ca16dd6d9f76e9e73111be471c115419aabf03c28472'
    'it'
  end

  language 'ja' do
    sha256 '4aca27fdd413276c1acc4e418a8124d129c15e63c5b433c1d8b1726df5dbfa59'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'e743e073edde166227c93074d241129e4972b87950bfc020cc81005eddaf1cce'
    'nl'
  end

  language 'pl' do
    sha256 '50d2940362fc8a860471de12191d1664d4814b4823b8ddb9f3ccbea2a8c494f5'
    'pl'
  end

  language 'pt' do
    sha256 'e74318a9a9622789bd04fd0149e596eee153c528940ddd0bd3a622d2758621e9'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '250efcc5f82ba706525c6befb509c83daf75b3d307a772de987edf4dde9f5ae5'
    'pt-BR'
  end

  language 'ru' do
    sha256 '6099aa4ac78b8e7977a8541a46a8b05aca1310651ee0beb7e33eb3a73c2264b7'
    'ru'
  end

  language 'uk' do
    sha256 '65762511c948f2f4533b2d2039150401d53bb7a308e8140bedf24197ebf28a1d'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a218b890a7f0060a655b7c7ee048e14c9882db7641ea0a3e059702fb582bc79c'
    'zh-TW'
  end

  language 'zh' do
    sha256 '581639858a7dae68c99b81dd8acbd608372e7b73a323e118de3f353edbdb9eaa'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast 'https://www.thunderbird.net/en-US/thunderbird/releases/'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: 'thunderbird-beta'

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
               '~/Library/Preferences/org.mozilla.thunderbird.plist',
             ]
end
