cask 'thunderbird' do
  version '68.8.1'

  language 'cs' do
    sha256 'aca24aecec92e781f3f7aa947a810cb1542fc2e35773d2392d45e6031487739b'
    'cs'
  end

  language 'de' do
    sha256 '385baf61db121d3c6a26d55f2772f6e4c51b26f3cdf9722c163689eb1383784e'
    'de'
  end

  language 'en-GB' do
    sha256 '9eadfb5301dfbc7b50d978368c009633e39233b8483900005e74ef9643d9baa4'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '7432386ad62d5039c10eb2c33ec5099b00126b21c692b19ba2c919f3efdfc0a0'
    'en-US'
  end

  language 'fr' do
    sha256 '87f0156493ee5f3cce055ad28f7591a6d2f08e87f14093b34160e5f06d8896e9'
    'fr'
  end

  language 'gl' do
    sha256 '33eae2ef59864b7a70612ddf8f0eec5f63509e40bc7baa28d44e88adff5ee688'
    'gl'
  end

  language 'it' do
    sha256 'dc261048e65626ae7a60eb5756ecaffc95c637ad69dbaa065a5e30e797fd7fdd'
    'it'
  end

  language 'ja' do
    sha256 '49acbbc3083d0e379b407eb06d9341cac63d29babd9f1b5964ad48c54eb505f1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '28a1ad2a727c1341f3acd1c044e9c7fcc32ac1945f8a720beb1967727f94d54c'
    'nl'
  end

  language 'pl' do
    sha256 'ac01d74fb74013a7a74ce2c54195c62328caf239d8dd335ecf2d410211bd7e9a'
    'pl'
  end

  language 'pt' do
    sha256 '1a693ea990d096cf1c828dcb6e025932ec0a9fad911bccb6da66855355af914b'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'f5033a68ed8394c2ca9d06e931a769f1b3d143d7c74443e17526113c7e5d928e'
    'pt-BR'
  end

  language 'ru' do
    sha256 'cae626a9dbb0d99ab9a59d6d02e7f638e9c0c99b92afeb8cdc7c6755bf8163ab'
    'ru'
  end

  language 'uk' do
    sha256 '78eb6eb9714d059850be858bac14fb965129a6022b8b5e5466fd20229b6809e4'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ec66e8b80a839259e29b109d6f592866003d8f5ee5c6d374d8aed664eb5bee5c'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ae7008a51b873c25fd4659440026333f7fc79edc3915d044da02717d3bdbe836'
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
