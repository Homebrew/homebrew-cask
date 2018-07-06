cask 'thunderbird' do
  version '52.9.0'

  language 'cs' do
    sha256 '46a0a184bad773f824455fbcb225f569b9008f4e527e7e596301a98b5d2753ef'
    'cs'
  end

  language 'de' do
    sha256 '048b757e37bdfd0eb0f03797c1bb4df9c82484cdce82f80d1d1c380e3720885a'
    'de'
  end

  language 'en-GB' do
    sha256 '62d6a52fa031b68d5561baad08bbe08ea94bdc12b5ae51d352fef25de6757985'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '498b24164e1a9fa9aebc569c6a428f62d0f647725180b7a7c142ddfc6a0d4130'
    'en-US'
  end

  language 'fr' do
    sha256 '0f59c292456042592e7d2b0dbf48fbb229e2db9da2ce1b12dc3ab46574193b66'
    'fr'
  end

  language 'gl' do
    sha256 '0ddf248f87b44d0f95da93eba55558e913d973edc35bb1bf1183b8feb686f0f3'
    'gl'
  end

  language 'it' do
    sha256 'c1ba91b6a95ad26ce4de5f2cfccc39cf64fdefc920883e4f3126db2ecbb82da9'
    'it'
  end

  language 'ja' do
    sha256 'bd5330b428a16b4f84a20e211b211a4b9681c7d6b1b86985a803fe2b8fccc9f1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c580967369d380af65d3edb14314982248fb4eb3ad1acf97143731074ffd5087'
    'nl'
  end

  language 'pl' do
    sha256 '25ac727c173c4c38418afd2bcb648617c063340f818d8718c71f1a61a534cdce'
    'pl'
  end

  language 'pt' do
    sha256 'cd489b8a99506c9edec293e2f3c2803cd82b34580a545f559f7577238b85d00c'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '604cae3da8c16eddeaeb040531cafbaadc0befc009efe36d684dabc0a1f27139'
    'pt-BR'
  end

  language 'ru' do
    sha256 'a5fd86b136eb73674e187830219e506f4fce512cb56b741d5bf5c70ace5ce35c'
    'ru'
  end

  language 'uk' do
    sha256 'fa43d4687c6ee0c006d7cb0ebc2887bb8943549498a28ac63195cd64346cf8c3'
    'uk'
  end

  language 'zh-TW' do
    sha256 '71536b97eebd95cdb48921fbef50bd3df6e17e7a1b219ae3bc1307bd3137efdf'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2de088f1b9357495e3d0bdccad534a49a31a73f280ed56573cc068919579b004'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: [
                         'thunderbird-beta',
                         'thunderbird-daily',
                       ]

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
