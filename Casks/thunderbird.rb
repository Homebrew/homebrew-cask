cask 'thunderbird' do
  version '68.1.2'

  language 'cs' do
    sha256 '4d5bd71e1a5a681b45de8c03c2cdeb29e6da385b10b1e72c5dee0f7ab73f2b29'
    'cs'
  end

  language 'de' do
    sha256 '196742cec19685e3384f99222d74378fc8a8742fa2207da1e35cbe5c29712c4f'
    'de'
  end

  language 'en-GB' do
    sha256 '3629ec9360d9d97b646d72586ec9590dc12af2afcfeb4c8754e4bf0f4895a09f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '7b35fe87e8a9c2a150d9521999a330ec24654b819dcfa756c59c701864d9c6f9'
    'en-US'
  end

  language 'fr' do
    sha256 '7d6ae64c56d770ec42378f3eaaef4d73ad9839f297a02c0e5e0372951a60b1bf'
    'fr'
  end

  language 'gl' do
    sha256 '1e080bc10b561bcabc3559ce43d89b783d15058742872820e3b15d84df244354'
    'gl'
  end

  language 'it' do
    sha256 '33ec392b4c0c121905be19e1ff2f3045b84eed48100884361cac45dafd69c942'
    'it'
  end

  language 'ja' do
    sha256 'c9cd154d081dc14220e73a962ec120ed6868fa914c0ce33823c033c38c1b61de'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a75f6fc32b79e36f069c1bfa5437c8d9fe8c6a23c94e8adf8194f37f3219a03d'
    'nl'
  end

  language 'pl' do
    sha256 'dd5597d55d6adea89dde2978f60be3fa82ae8dd9d4868127e9ea03e5a19a782b'
    'pl'
  end

  language 'pt' do
    sha256 '5126c0e24b0247a6d78d990a5311ff99719068778f3080b24580554aa621c89d'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '092f367e3105e8a376558d10b6e65a1515519cb19f2413b5cae03ade990c5944'
    'pt-BR'
  end

  language 'ru' do
    sha256 '9fb9772e5751a29f4c5bf996c608bc992a6874e199ae3cf8ca884bf08ba117ab'
    'ru'
  end

  language 'uk' do
    sha256 'e5f61ec04afd9ecd41694276f8845eadbd3c93cbc73ede7e84a818c62572531c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '86b08509c0c83d31c87795828d126eb71e29e50a4ae310feecd8e4b2dd00cfd9'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7e9a67bf79df4e46a66db3306fd73a8087a60a996beb3ada032bc54981cbbfaa'
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
