cask 'thunderbird' do
  version '68.9.0'

  language 'cs' do
    sha256 '6dd8a9d81ca979070d7a55107b0b970f30a5f4d5fa501663b7924a12cf2358fb'
    'cs'
  end

  language 'de' do
    sha256 '65ad5be04cd21180b6ec10ebd988f5f44d7914ac65af2a1d91737f8ecef3e880'
    'de'
  end

  language 'en-GB' do
    sha256 '7d71153b91532fda81344327a5cddd4ef2ed1088d0a35edaf803f43ed925a30b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '47d1530bc3a64406179fa6257b65fc24695a71c9e5e787658026d0c7a6c40e0f'
    'en-US'
  end

  language 'fr' do
    sha256 'b36fc82206a42978d76c9e9ee4c5428dd8059e5e8a6324da888ecc3780b9616e'
    'fr'
  end

  language 'gl' do
    sha256 '22a9e908251da280138b5ce6b47c11440feca7ab57dc8f8ddc8f207c999a3ea6'
    'gl'
  end

  language 'it' do
    sha256 '1529bb9a5e35eebcaccbe03b40286355627a2ba16b342c49f1533c8731b449d7'
    'it'
  end

  language 'ja' do
    sha256 '14c283d232cf0fa790f03431e16655a7055974fb6de333c9711d652069d5a425'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'da6b44463960c220ad231cad68a06d115d41d08fc08f952bc3f26e759335950d'
    'nl'
  end

  language 'pl' do
    sha256 'da2028643297e5e5f58ea3ae146211ac8b993680238ee1fabf8fd21e4a18cb10'
    'pl'
  end

  language 'pt' do
    sha256 '0c7cb8c8d922ff8d2253f0a7c8f00369a136e95a0d078579b9921de3688483d3'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '5cfe158bb1212bf4b0f65cb51b87840ab53e2c72dd3907469222555d4f2457ae'
    'pt-BR'
  end

  language 'ru' do
    sha256 '64871ccc461f030785d7e875db294fb6e84b2909d1d586490c2fbad473c147a6'
    'ru'
  end

  language 'uk' do
    sha256 '387e388bf25976b28302ba88158b6a9fcb570151a5e34e3b0c9e50151ce70035'
    'uk'
  end

  language 'zh-TW' do
    sha256 'f688eb3d1d04096e24002b5ee4552a0eeba17584bcb90d868941a6f543f4f086'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8d27c13487e43b21556e36a8d73aa18dc34536cd5e7b66e9d3e16df67260c93d'
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
