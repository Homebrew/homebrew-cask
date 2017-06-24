cask 'thunderbird' do
  version '52.2.0'

  language 'cs' do
    sha256 '5e300e28761c0588aabd42d48adb4e71d70ea182f956a14a49aaddc5eaed937a'
    'cs'
  end

  language 'de' do
    sha256 '64030af3e83f1c02e1616197fc5111d7d3f29e1c37509deb763dbb4d6a8c67a0'
    'de'
  end

  language 'en-GB' do
    sha256 '69c10c6aa6728c671cc8ca876c396c19c44851c2cbaa3d41c5b9a3f9c264dda9'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2d143d250d00883911168e45bd9518ff7c7eaa1bea4aa19a494dc5b7781240f9'
    'en-US'
  end

  language 'fr' do
    sha256 '424c51dea69434dc29ef4b84eb99dc2dbfa5e68ddb9228c1b708a64ce0ab0a6b'
    'fr'
  end

  language 'gl' do
    sha256 '9fddf9d730b9c3e66472fad5db9d597a46eb5cd8ed703c5c9995ea9c1c136af1'
    'gl'
  end

  language 'it' do
    sha256 '41b8420b77104111b62e0abfd371b1c9c1693659bdb1c5952a453368623733cd'
    'it'
  end

  language 'ja' do
    sha256 '1b8c5946c87775f7bfb7af54649da647b0d35da05da58ca2e0ce88f149ab9a76'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'ada6010583e66707577a3a3bdc7425d03ee8d4a964cab7b56f8703a15f1adc17'
    'nl'
  end

  language 'pl' do
    sha256 'ca8a6b3c5f83f9120f887873dedef84670e53e2c2f4874773272fd15a6b06f2e'
    'pl'
  end

  language 'pt' do
    sha256 '91847f382bc1b9b33412a396e49e4260f7b845b5a2608071dc09453e895c012b'
    'pt-BR'
  end

  language 'ru' do
    sha256 '0df9f1f6c4546038ce3fc37a631379ce3d3e0f3567684ab480800a365d36da53'
    'ru'
  end

  language 'uk' do
    sha256 '13f1882f0aee084390adaf0a9cf4cc7c6ad30fd6fbcc1faecbe2a6577eefbc4b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '49d4455a748eb3625d59639cfc72ddb8cb818c2159c11e7f8500fd8b9d9f4d23'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a62503fc0fa6195a8a6cbe23bb9c9aee1f6ba1230250d57a60ede8727f744365'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '740ae57baf6c9bbdda0d671a7175c0a8ac3117d9e117eb084bff02ba380ae4c0'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
