cask 'thunderbird' do
  version '68.4.1'

  language 'cs' do
    sha256 '0db4c84e7fa52e80be946a573be0b1c3d4db74344f2b755826a15cc25ef02b70'
    'cs'
  end

  language 'de' do
    sha256 '0a3c889fd41a81a3b232d6f0c65640a50f2385de461edb7935dfc28b5cc2667b'
    'de'
  end

  language 'en-GB' do
    sha256 '8a433bb1819df988b0de2e7e30e3912cdbb42c33a8724b93a34f866b3b28ccb7'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9ec74d64c0a18e30e034d1154fe6e64f27ed61b20e41e290bc52ede026c115fa'
    'en-US'
  end

  language 'fr' do
    sha256 '1385e56782c7f4fc81551a873122a33ae98ccf31e258995d267fd684356e1995'
    'fr'
  end

  language 'gl' do
    sha256 'c68c1f61b62ce8c57d8d344a19cb48feec85947283887d10ffae4cc6d16abf18'
    'gl'
  end

  language 'it' do
    sha256 '91c07759df3240be953373dfb5d22a6affffd624ec700071a82c56ea55433b24'
    'it'
  end

  language 'ja' do
    sha256 'f4881377bce119f75f4ef4859dcbd6c1c25e4f3d444a8d0605bb531023616360'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '370d1a61d494bed805779c0451830e3fd0404a65ba16c9fb8a6271a2ec0887b1'
    'nl'
  end

  language 'pl' do
    sha256 '9bd419aa3616f13a0df4bc935d66a9b3d12f8a7ae65e298e653664927c48f06e'
    'pl'
  end

  language 'pt' do
    sha256 'd193760baf0d9355009329cbfd553b1f0f186f02212046b555b886054868296b'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '1c08bf1c2cfbcc8475ce6c10e34fd2b90e5c24acae15c82b532837a77f73cb72'
    'pt-BR'
  end

  language 'ru' do
    sha256 '88b97801aeec1812ae1fd8f90e125d23a3fae834bf79c2a5ab99a20b9ec0a346'
    'ru'
  end

  language 'uk' do
    sha256 '6d00debf67cdaed2388473a0458a1c9458dd2b0c1ea8596a9bd138dc0098057b'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e92cfbf33a6707aab8d9f52ca35bbfbb1149c8a8afb0f5c73a77de08e444af46'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b3e4da1672924985fac0581cdedb156cec83fac059d2e69b25da403d88cdc8d9'
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
