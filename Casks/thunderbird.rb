cask 'thunderbird' do
  version '68.0'

  language 'cs' do
    sha256 '57b9828ea241df25c18e287977687cbe2ce399e8be2eb7a02c6f5d816d7aca1e'
    'cs'
  end

  language 'de' do
    sha256 '3fc7a72056bab5e628068170920dabae61121ec46368adc47e5ab0d5b1ee84ba'
    'de'
  end

  language 'en-GB' do
    sha256 '18260a7e7157af9d05d3aacf29796cc7aace6fc1ec96be6cf4733413cd1f1e5d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'dac86d4de119525dcd044227bbf6bceed6ab3e5ea0e1e18cce9e7124fe1a09fa'
    'en-US'
  end

  language 'fr' do
    sha256 '14caab12c6745fa9465fa78f110cd33582b7c68baf8b754ee8fad3c1d16ca3b1'
    'fr'
  end

  language 'gl' do
    sha256 'cfed70110d6195d43a39adb2ea2e244c23ebe9bcdebf710a09deae5a0cbeab2a'
    'gl'
  end

  language 'it' do
    sha256 'bb34309a414a046127a4c0a692f2fdbcba91e8463121a32f1343d0a47f1fec7a'
    'it'
  end

  language 'ja' do
    sha256 'aae838a1a130c4bd37a9dd3b1b20795fbc23704eaf2094e3a995772b781ed81a'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'eab83923b86b3c2cd2b11c181fc66a6ab63a16c1fb98ab4c78b9f9d31fe8a2e3'
    'nl'
  end

  language 'pl' do
    sha256 '6a1a402a7eb14a950d19ed75954479d531d1900e093897d8b45f96c305a39450'
    'pl'
  end

  language 'pt' do
    sha256 '1fbcc253c5422363efbb922f9270d3709a3806fed0ce7ba8ec9fe2ec9e7af189'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '801528aeda2065564a8c3a79e9b41fc80c28adb61ecced9e0532650f9a886b9e'
    'pt-BR'
  end

  language 'ru' do
    sha256 '759292227e159174f25825f3c2dc771971b52f26b3d8f30a5d6a84375ee36642'
    'ru'
  end

  language 'uk' do
    sha256 'b41e1cb6b555c176474b988107502957419228b5641562a73713c6ae3d5ab4a4'
    'uk'
  end

  language 'zh-TW' do
    sha256 '037a87196113976d635050dcf8d1bffaf2e6a30ff0767897ef2b7cfc49a23c4d'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e3254f53b81dfdd8ad8d45251001b8cbabf6ccdc99fc559dbfd7cede7ff03576'
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
