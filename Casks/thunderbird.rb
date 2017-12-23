cask 'thunderbird' do
  version '52.5.2'

  language 'cs' do
    sha256 'ff91f78b795208a163feca3eb09d59da85590148263e69e4f9579b10ea7951c9'
    'cs'
  end

  language 'de' do
    sha256 '7bcb00ca2d0ae0d2471070d7c4275c91002a7b1c4a81e8a529dd357559415126'
    'de'
  end

  language 'en-GB' do
    sha256 '6d902a2cf97e3ea2e00069f1e7afe447486c7656ef5d3e5f20760170cda65405'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9632098458ccb1564b820ee925d2536d1d1df271f6a7bd13233686c8a6389b3b'
    'en-US'
  end

  language 'fr' do
    sha256 '1062c9d839f818564588fb6ec10f433847cf7169fc80a9f037aa0561722cd76c'
    'fr'
  end

  language 'gl' do
    sha256 'cfceca3b682f050dfa03354625a827010e8f7200c57b14fb3b318fd28628b691'
    'gl'
  end

  language 'it' do
    sha256 'b06e326bf96681f71f12f03eb1d14c0df83c6aa77cf6fbe83b49d7d765c4928c'
    'it'
  end

  language 'ja' do
    sha256 '11591b92419f3fac4bf9ae107a1763d349f92547accfd8f7a1ac4cfaa13659d4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '00c12dbdb3cbf324157c54bdabccc1f81f539d683f21a4976b4efbb3f97c5f82'
    'nl'
  end

  language 'pl' do
    sha256 '797caa0d679aa08e32d4b8a64fefcd316be3ed9b76d159b6eb6716a6721e035d'
    'pl'
  end

  language 'pt' do
    sha256 'b4c3bc158c437b235b229803129da223ea0c255ac3b041713f3ab57e95adcc1a'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '5955c64bf73cc70022c6155794df394ea6ed9e4651c36c9d0a29b1022411749b'
    'pt-BR'
  end

  language 'ru' do
    sha256 'dd40fcda0a8be816da4bb76c17f0e633c9677c9f639d0613981649f0d195875f'
    'ru'
  end

  language 'uk' do
    sha256 'dd7e957c77e31780a55980ba6f291fa0eb94852cdd9fb03a40ba057c8a818e3f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '03a79814ac96d74d4c398521d31572422fb72ce866de0637bf9ec62e45a8cc99'
    'zh-TW'
  end

  language 'zh' do
    sha256 '96071db812f9a0af59e2da3a74a0a7562e70e6110190d9594398584e478bf386'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '1bbefc2421e2fdc7df9905cefd68b0332f53b2108cadd018f0b4a576fc5afd35'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
