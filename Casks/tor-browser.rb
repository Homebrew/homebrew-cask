cask 'tor-browser' do
  version '9.0.6'

  language 'ar' do
    sha256 'dd94120aec8ac3734af581d8bb86a7c5411b1a98f59e387c5c66d7032f4f7495'
    'ar'
  end

  language 'ca' do
    sha256 '27cb11563c652fea2a62c9d963822a4fac683387ca56246062a6904e6092d1ff'
    'ca'
  end

  language 'cs' do
    sha256 'a3f01cec67413141b53873b1e550f419d74b1d9a48cfa1f077785dd82e91b00f'
    'cs'
  end

  language 'da' do
    sha256 'fcf497d86a495956f44d4f400dec2718eeb9ca7480e76771b2435827c0bedb37'
    'da'
  end

  language 'de' do
    sha256 '9dc488e733732cbe679800a2c16ae69a11f06f924b60f5de4c25ae136bb8fb7a'
    'de'
  end

  language 'el' do
    sha256 '51a1264722825b5c31c719a5dd967ff98292a91450776afa75d2e8e104646d68'
    'el'
  end

  language 'en', default: true do
    sha256 '75cf0f4810bab9dbac37bc18ad5496697e19641567cbd77049c1534cedd7b0f2'
    'en-US'
  end

  language 'es-ar' do
    sha256 '75ebd860f5c0dcd4c0dafff879786c60365965f22cc201442488cca712b489dd'
    'es-AR'
  end

  language 'es-es' do
    sha256 '7eb2ef25c22c6780be8f4247b7c24fa427b3aa04e3b04817a8dc803688f2a666'
    'es-ES'
  end

  language 'fa' do
    sha256 'c602951d5097ad0c39becfd027c742248c5b159d6f6140d0d5fb9da1d01faa09'
    'fa'
  end

  language 'fr' do
    sha256 'c636bf6bdfb11405fa1e845bbf99a3b8faaa8115c0737ce39cb635ba723c240e'
    'fr'
  end

  language 'ga' do
    sha256 'f7b9091d9d6a6ccbee96e37cb205b3d38cf2c16350309f4b9e6803938e007c79'
    'ga-IE'
  end

  language 'he' do
    sha256 '60b62bd01bca2e2093e6deaf206381bf9cfdb355d903ba7cd8a8e7efe0a05218'
    'he'
  end

  language 'hu' do
    sha256 '5ad369db9359e5129716d85d83a2e60cca29809736943926e75c6d2f588e9c45'
    'hu'
  end

  language 'id' do
    sha256 'abba8f0246551b749add8af76d3a2f66ddd07fa4aa9be461d10839ad16bb7689'
    'id'
  end

  language 'is' do
    sha256 '2ce4b9012d30d811bd3fc7e5f8ca03fac9ee21c15d035fe4c86d017883e91aaa'
    'is'
  end

  language 'it' do
    sha256 'af8a859979c9d4cf5d231ddf751204b32b5b4c5a4cecc64ef62c41763ed70764'
    'it'
  end

  language 'ja' do
    sha256 '54e121d02242b6e35806ffa4c2313965cca5f6e3337137a65335b171458e9f6c'
    'ja'
  end

  language 'ka' do
    sha256 'c0fbae303f9f836c80ba695b7ed432d6c1ca420b78171d2f2a969e4124df22c3'
    'ka'
  end

  language 'ko' do
    sha256 'e02c410e03031b9c9fd74a149ba3eb934692a2b3c7cbf9f736c498d7dec75882'
    'ko'
  end

  language 'mk' do
    sha256 'da41c3e4f81e605f1cbc8c6c8ffdec761dff0dd0b830ecb7fbfcde476ad4553a'
    'mk'
  end

  language 'nb' do
    sha256 'dc1c780c82830a2f78e88e5744d6a4c45db0cf45a57b421a33a95bb5a1e0bce5'
    'nb-NO'
  end

  language 'nl' do
    sha256 '4a4ff2191c0dd211e365b88713e7499a2ffb453c0f891c60a780c82e28d776cc'
    'nl'
  end

  language 'pl' do
    sha256 '0b1d208c613f600ecd5cd649099ab534c100ea425841b51a1b3638e3f8d5db67'
    'pl'
  end

  language 'pt' do
    sha256 '12c799cd37cad3aa92c007cf2dc2a13aa2f5eb03372f664d92b5d56196696fd6'
    'pt-BR'
  end

  language 'ro' do
    sha256 'bc23939623faa241008628351f7b6dc7437d495b14f184481f69bcbf946cf602'
    'ro'
  end

  language 'ru' do
    sha256 'fe5d1880fec396b7e6902b8fa70b8348b4cf8ec7fc5f89109b7fcaea34f7d7a4'
    'ru'
  end

  language 'sv' do
    sha256 '24ee902c04cc21be8b4ca8bd01a945ad7a1eb280c1f11bf76a5d07296ee5bc75'
    'sv-SE'
  end

  language 'tr' do
    sha256 '97b0f659befc2e94d51e95318ba7aeaf4da9c43ca09c55f35bc23b83f564cc81'
    'tr'
  end

  language 'vi' do
    sha256 '292201f898acac5532bacfd1c7f7f52f43b4f6966f688ffb83df04d880b35cdb'
    'vi'
  end

  language 'zh-cn' do
    sha256 '3cab4bd67ffc3c7ad35df560560d3d3234e18278c0d784b8e569c662772f49ac'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '94765993ca684046badb3cc6d4ee3db1a363ef08cbd293360e6c4794188e2e07'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://www.torproject.org/download/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/'

  auto_updates true
  conflicts_with cask: 'tor-browser-alpha'

  app 'Tor Browser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
               '~/Library/SavedApplicationState/org.torproject.torbrowser.savedState',
             ]
end
