cask 'thunderbird' do
  version '60.3.1'

  language 'cs' do
    sha256 'a50d326411e6209ea1076a6e031b15b1e30e601dd448d6a144841d472a9b940f'
    'cs'
  end

  language 'de' do
    sha256 'fc4911adb3f5579c3a7e40e38856f5537837b06d03dd6b4cf69c1173bcf3eb1b'
    'de'
  end

  language 'en-GB' do
    sha256 'd8206135ad223307fe9c68ef7b732096f6c90c1d832803cc52738b170ff9a222'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '79e130641f242b21f08f3397f3c3fdd2b975ce0f34f97d6ad05c39c5676bb716'
    'en-US'
  end

  language 'fr' do
    sha256 'd00e2c1ea1161fbbb70c193618f4f8d40321b420cccd74658bafeee0bb50c24f'
    'fr'
  end

  language 'gl' do
    sha256 '35bb2d9abc85ad05bc3f15c65e929b6924a3096ccb7854075bca9dff844cd0a5'
    'gl'
  end

  language 'it' do
    sha256 '7e379f2c8c811c4a502374e427c1b61c6d684d09036d2c5d04511d41cc4a5d78'
    'it'
  end

  language 'ja' do
    sha256 '1994542fcbb58b9b4dba6e1d0adbd96f567afefad0c308c150c22cc552d3f061'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '7a772df34948be161cf6128402788a6a358300f6b12a393d09a333ec4dac5672'
    'nl'
  end

  language 'pl' do
    sha256 'a3bf4cd28ec1da647e9f75fb1163fa11c7035be93aacd400eededad31c5ae310'
    'pl'
  end

  language 'pt' do
    sha256 'b230961e93a9bb6bfe188d9f0309eca67d7ef5f027348f3923ac43e00cf01836'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'a0f36daa113961c2bdb749d07da140bbcad22fd66e11983699f5cba8bd7c2d8c'
    'pt-BR'
  end

  language 'ru' do
    sha256 '7b142848467cc37d5e7f653a9fe55dd40c4cbc770a96c9aaa214a608b24d3528'
    'ru'
  end

  language 'uk' do
    sha256 'c57dfdd774e1b519bb5712e33ffea40e64c0073664b7c11e1f68c239a6aaae17'
    'uk'
  end

  language 'zh-TW' do
    sha256 '924d052af2aca82df14a532c938b10d56d2d922274574916a384294180d74544'
    'zh-TW'
  end

  language 'zh' do
    sha256 '93e6a914a9e9a0b539c8f70e099e578aaaec914c726f0dd24d36794c11241c4a'
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
