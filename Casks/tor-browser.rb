cask 'tor-browser' do
  version '8.5'

  language 'ar' do
    sha256 'efb3e62e4c7be0721c13497b9519481e5326bd34c29be0fdf55078dd2f74a1df'
    'ar'
  end

  language 'ca' do
    sha256 'e8781e54816356668b55a57b49ad31bf6daba7fe6d7ac9b66a59548ad8a71916'
    'ca'
  end

  language 'cs' do
    sha256 'fe4485c663766a52925f6a25b06a23ba0884164c4ad48d1ed441136e4140a77f'
    'cs'
  end

  language 'da' do
    sha256 'fe80a24f6afa3cb7044ef36e8b7b2ad9aa7236bf3db71ab98feb7153b357b96f'
    'da'
  end

  language 'de' do
    sha256 '5b3f3eb5c6c033f3d03e0d46db49b1d223eae48dac0266f4f0ee423d6b5d8867'
    'de'
  end

  language 'el' do
    sha256 'a88eedd69e9d66d55c61649b64086cea8642b1a1c299ce6ea9fe4f9468e3c5da'
    'el'
  end

  language 'en', default: true do
    sha256 '9e431d05dae990920087c034a1e98d9d07a9df09823771ae3c26cf2812e71ae6'
    'en-US'
  end

  language 'es-ar' do
    sha256 'e25bbae42beadb3849155040c6c4430e9a62e0b8b2409af776ebb413861468c6'
    'es-AR'
  end

  language 'es-es' do
    sha256 '95d19be002b908030910d2ad0b8a8ad7a1b9ab6547cc41eba43b83eeb8dd9f71'
    'es-ES'
  end

  language 'fa' do
    sha256 '1437d8cc07785d9609b54472de88fbb3aabd98194fcd3a537869ea216b648958'
    'fa'
  end

  language 'fr' do
    sha256 'c0c206f7e47e71f850d2dbc93457e18df6b0dd913762f7b1137d5deaf60e98a1'
    'fr'
  end

  language 'ga' do
    sha256 '17edf99688e1b19d63edafe136bff55bf7f7917ff685d7d591d22b7eac34d54a'
    'ga-IE'
  end

  language 'he' do
    sha256 'e371fd1967be83e5b59bc37137acf2c5b9ab1490103de0747e301c28440fe931'
    'he'
  end

  language 'hu' do
    sha256 'e54198b7c413667836032b93793ad4d6d2059ca0997ae8cd2fd4aab7e461392c'
    'hu'
  end

  language 'id' do
    sha256 '782af7b76d6c84d3a0258be77e0ba13ce1dc1be98ec17d884af3e06177f6b8a7'
    'id'
  end

  language 'is' do
    sha256 '386db22672dc1da7a5c3e7a9802f1a29cf7b4255c6330206d139046a17b9761f'
    'is'
  end

  language 'it' do
    sha256 '13a3eead4156929e97c6c5bf6d1c287cc19ce00c6ae0273510e683916b4b4c85'
    'it'
  end

  language 'ja' do
    sha256 '5c91d25baf2b19847aaef15cd1933435e6637f6df588d38eb9898f344ac1087e'
    'ja'
  end

  language 'ka' do
    sha256 '61ef6a9a7613d5a6cbfb8a0359f2e8aeb02e4a8a85299ff16c6a34c07e172f55'
    'ka'
  end

  language 'ko' do
    sha256 'b53b378d79c39ac9bcebd428489fd34a2704ab3970178e72dc45d966bef7459a'
    'ko'
  end

  language 'nb' do
    sha256 'f3ff9bb8f0c7600c9d716446701935133366ea72ffee007cff97b0e7fb93ee7f'
    'nb-NO'
  end

  language 'nl' do
    sha256 'b7e890a768a79edf7ee57ad9d873550b44ed4b9fecd11b77e61c7d272c705b6b'
    'nl'
  end

  language 'pl' do
    sha256 '96e2c350697b64f887f8e8ef629ab24c62dde3bd50d071273e58b0718f1a4a7c'
    'pl'
  end

  language 'pt' do
    sha256 '05e4d8b84aebfc512d62e5f66d895c9f95299e9d7f78db7300fb6e8f9133ac7f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '955345cbcf5ab7530abe30f6ef68d6e2db76931bc5dc5ce33d0063fa3482b474'
    'ru'
  end

  language 'sv' do
    sha256 '62e8ae30c8f778c1b624e91d0d494135d690fc0d4ef96e98c0205331f197f96c'
    'sv-SE'
  end

  language 'tr' do
    sha256 'd0b4118f907458e101a59e43e16100a8f3ef480309217cf5fa73dadebf4d3b64'
    'tr'
  end

  language 'vi' do
    sha256 '358d7c82a9a1cf03a9ebfb77dac2595d42cb024b398f29a99f6da943a95a7822'
    'vi'
  end

  language 'zh-cn' do
    sha256 'f3d5ca2db08db3c612713b3416edf684b1681f3ad23df1ec79d9a662309edfa9'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '120f761df78788f71bbc8db3ec7d40e3d771353036725246d267631d817078f9'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'

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
