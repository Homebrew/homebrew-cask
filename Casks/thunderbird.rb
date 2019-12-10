cask 'thunderbird' do
  version '68.3.0'

  language 'cs' do
    sha256 '325ccac98745303803ccac862b9dd7b0828e18ab32072d3dd3a87b9d6dccd66c'
    'cs'
  end

  language 'de' do
    sha256 '568a44005a09011d50b779eb223bc1de189c5e354f6eabcaa05d220ff6702dfe'
    'de'
  end

  language 'en-GB' do
    sha256 '4168dacf3962c8cdda3283731d7e6eea747cfe6f4cc368f33b3f53923c7337a0'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'abbd224676bbfc3b66ba19097879c6a06c8f6e7bcd0f9e6974eb7541f7650ef0'
    'en-US'
  end

  language 'fr' do
    sha256 '83ad465e9540130f5741b5ae5c90ad5680d2767f4fb460f8b6721fce289f3d48'
    'fr'
  end

  language 'gl' do
    sha256 '73bb3bab5cfe7bc6d3156f1129a4e7c5be9ba878d7fb7cada3aad3bb0449f9f1'
    'gl'
  end

  language 'it' do
    sha256 '71698227c9f7d2c85a546434e809fd71b7a5bf1b7c12950d59f086c5a7c0e125'
    'it'
  end

  language 'ja' do
    sha256 'afe9da9ede996009d8f08bb0168f94a719fc28d1e1a0e5d766b3e7ca1e02a42b'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '785e868279e6527d8729a55453cb8ab57f6ee68431a91fbe8928506a65691837'
    'nl'
  end

  language 'pl' do
    sha256 'bba8a9e84328a62f55b2493fef29917398473e03f78edae443f3121bb1b634b2'
    'pl'
  end

  language 'pt' do
    sha256 '307b914f27aaa141869d4f766ec641d6e6f94f115670011a57ed8cb1a152bcde'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '39d22d24551da3ca82a5b7c77fcce3bc2155293932b72771f5ebcdda3d42f332'
    'pt-BR'
  end

  language 'ru' do
    sha256 '397e5935c58b3aa81e135f3360e0e0acd138303f1214fbb393e71bf75920db70'
    'ru'
  end

  language 'uk' do
    sha256 '9ee7bd55796bf66a1d8ba572bfc4a22b3b594c6f340c75e5a45f435f47e2358a'
    'uk'
  end

  language 'zh-TW' do
    sha256 '61ac63c703156d76dcba3a63270e95f98ae68b10c7f0210b35c61adddde47b82'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f22c0218f2477fb3228885903071fc656a537436545416021478735f23a198a7'
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
