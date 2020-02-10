cask 'thunderbird' do
  version '68.4.2'

  language 'cs' do
    sha256 '71f0ef4616914280087db831159cff8e230c744b27af5cc109b77576516b3564'
    'cs'
  end

  language 'de' do
    sha256 'f47819e92e45d6931d25d3d1ea0c56fc2427f9e64f4174a93ba24f97791d75af'
    'de'
  end

  language 'en-GB' do
    sha256 'baf5df2e2daeeea7c5d79aac0598690dd17a49fe8a647a2a3f6fdb90051c493a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9414ca9b85f0062babd138424e3cd2fe93d46baa91f3d2e49070c20f85aeb2ef'
    'en-US'
  end

  language 'fr' do
    sha256 'fc36fb833704baa262466c8e1b97f22b2b9fb9b18daa19b0dbc5ca083c8b85ba'
    'fr'
  end

  language 'gl' do
    sha256 'eb43e62b723f6fb0de0117de18a9714fb6cb408d59d92dc136ebd337d56914f7'
    'gl'
  end

  language 'it' do
    sha256 '2f90db916c5a2ea6f71d0fe5f7b76789c722bcbe80527bd096a94687ff28461f'
    'it'
  end

  language 'ja' do
    sha256 'a74c1b771ab185efbffe45f985dfaf5a34b87d8edd40b8410a1a63a7f25cd51e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c8a10e07de0b35038ed709a597b6b6a234a14ef85369af481b6a539aded5abd8'
    'nl'
  end

  language 'pl' do
    sha256 '1322c664766d512381cf3cfddac33c367669e109a0bd571d5a624c6c30b08fe4'
    'pl'
  end

  language 'pt' do
    sha256 '47888a20110e646d0776476099ceb72f8226c41b57b3df257bb61f2e828cef27'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'd86b058401e656554d063e946e2bd151158af867d26064f47d32beea659c588c'
    'pt-BR'
  end

  language 'ru' do
    sha256 '009bce3d26c5e974b84dca937134aacdaefc8aa69b31929d8d0bfe76880b20c7'
    'ru'
  end

  language 'uk' do
    sha256 'fd25ab2338213906c66c7428eb888b410559c00fb1b6e4448efff943122fc592'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1cc15a192e540a8c51b0ffe4f8afa2988e8ea1db49529343df3a608b9e166f76'
    'zh-TW'
  end

  language 'zh' do
    sha256 '67e24f7dd6cc3c41618ab0e3168a4ae0cb8647b9d5ee7cf527b4af02e92fe9e5'
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
