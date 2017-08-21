cask 'thunderbird' do
  version '52.3.0'

  language 'cs' do
    sha256 'c21f5c7db73c8429509a81afe02df287809ac681b7a20f2dff135c9f4b0ba473'
    'cs'
  end

  language 'de' do
    sha256 '2df66fb203a1297a9db99e039c9301b91bd50df470f1cf55b05208a046157610'
    'de'
  end

  language 'en-GB' do
    sha256 '0be404b39a1902f237609a11aa9b46b3f2a724c004882cef1ae03dca5b3a827e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '907c436eeb31e8fb1b58d256bee904705384b66d65dcdedbb00a8102663812bc'
    'en-US'
  end

  language 'fr' do
    sha256 'eacf2d6ea769c657d1e6e72401cc71f883547f97434006123c3713a58a2e5694'
    'fr'
  end

  language 'gl' do
    sha256 'a0f0e5fdd5219e5cf1fb9ae7ed9cbf24c09011ca26320e6e3d019f0c011eb8e1'
    'gl'
  end

  language 'it' do
    sha256 'ae928191dce629f8cda87021fd66e5cf96bafa52fb3bd075b8f492859dddd32b'
    'it'
  end

  language 'ja' do
    sha256 'b858919fd0c81417bc45986096a4329fe918ff57053616c7dbdca17d3e6720f2'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'f7a80f45cbdbca7d0cae7ad1964d2b9ef001f3bbfae93e76cb24be11296f64a1'
    'nl'
  end

  language 'pl' do
    sha256 '980f387173e3456bec230856fda3d4105754df21881d6cf9a51199b2136aff91'
    'pl'
  end

  language 'pt' do
    sha256 'ffe12c53c71d29cc9093f33ddfafd6b00e140cfad966cf65eda969a75ebdbcc2'
    'pt-BR'
  end

  language 'ru' do
    sha256 '9b6855eaa6e84e57c6e8f60089268ef885323956feb81f542d9ae73d83ebec4d'
    'ru'
  end

  language 'uk' do
    sha256 'a25b1265b37da886480cf952565d60631c86f52c96ebc03395fb123e438ac257'
    'uk'
  end

  language 'zh-TW' do
    sha256 '88e908c7042cc6675ad5348f4b9758c97baf0a5d308fc073ae5d64128de149c8'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd3fd45faf368a2349cfd336bd609257c40d820175985dc4e0585da021a25b9a9'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '39905a34f99198fc391db427831a3e786d40387ff811a4c7c5e8b88af89ef3d3'
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
