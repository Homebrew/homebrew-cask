cask 'tor-browser' do
  version '8.0.8'

  language 'ar' do
    sha256 'a34cb73a38c769d9307dcae407229d7705001f893dd4d471396f5b0a23938ab3'
    'ar'
  end

  language 'ca' do
    sha256 '7f768d95360df6fbe6dcd1162ff2bb1dd2870cfef578333ce7dd673d51304807'
    'ca'
  end

  language 'da' do
    sha256 '4c289fe9724a8af26aa540556f1bce61b474bddb8f85fc8e82db356bd3a17bfa'
    'da'
  end

  language 'de' do
    sha256 '543ace61065647b5726df372148ea8b5671848e152d3556a72d68ab4d27bd20c'
    'de'
  end

  language 'en', default: true do
    sha256 '1dc01b95146352593c3f18ece25f8735120565f921e22c2827df819effdddca3'
    'en-US'
  end

  language 'es' do
    sha256 '2d7d5fdf5760b1c6923e86739da97c0ceabdabedd69c8cf1cd761a15d4c03ae9'
    'es-ES'
  end

  language 'fa' do
    sha256 '56df3523e2981f7b8f49977af7a3097b85ac1b4c7f848d2f0ee4e50c5fd6ffda'
    'fa'
  end

  language 'fr' do
    sha256 '635717ea48639c3e6ed21ed8d141eebecd0effcd6146f33c6d20245641fe245e'
    'fr'
  end

  language 'ga' do
    sha256 '2c175ab5a9afdeee8c2ed2bded571923da6ebbcd1db220ab7c26ab2468ddc6fb'
    'ga-IE'
  end

  language 'he' do
    sha256 'c34544d1dc4d50f3d65b349df9773d37d15cf21fb8f57abc5157831f0690ec3e'
    'he'
  end

  language 'id' do
    sha256 '95b9253c9e417daf612f3fe2ea03deb8964fbe9ef6b7e99fcce23ab0aa908aa0'
    'id'
  end

  language 'is' do
    sha256 '923de10d05efe0b746e74e80344d70039b20cbf9f7fc126df58e69e88f65be7a'
    'is'
  end

  language 'it' do
    sha256 '06152d2fc65016326a0c5b302760dc1c63fbd840a7694c81349ba51954e96ecc'
    'it'
  end

  language 'ja' do
    sha256 '862e61b7d6d0d7376104fd5fbc0dd396434355fede8845bc6091e5187b32d8c9'
    'ja'
  end

  language 'ko' do
    sha256 'd84576e103239b1095907d6e3ed9d8d27a2ac6a5188602219bf3d56386989f6e'
    'ko'
  end

  language 'nb' do
    sha256 'ba88d7b1a818ed1cc160721a1569a8f922723c958286438eb15d239cef4b7602'
    'nb-NO'
  end

  language 'nl' do
    sha256 '91f7c73a7f848556078bffb7f1f7e1f4c569468c9d89939cbe1ff34630fc78f7'
    'nl'
  end

  language 'pl' do
    sha256 'bf7602ccfb66b1157854b75e75f402eb88f8f8bb434cf78040168d1f4e3605fc'
    'pl'
  end

  language 'pt' do
    sha256 'beb2438bb92e4a23cc500617969f50b3049c93ac7858ac9367fa06bbfe0f7336'
    'pt-BR'
  end

  language 'ru' do
    sha256 'f5385c3aa7e0e329f812036c174515adc2a3f095fb6bcfc1f41e1ed94e0ca565'
    'ru'
  end

  language 'sv' do
    sha256 '8d41b08506ade3f006561ca7da756a08d103124be80ce90d3fbbb2a3aff46b88'
    'sv-SE'
  end

  language 'tr' do
    sha256 'a7ff43f8b2e519f80a2d60562848fd43c4292c3cb7de228aa2771fddcf8c73e4'
    'tr'
  end

  language 'vi' do
    sha256 'b952e60b71d06d2d4c990f050ebef4f7571f8d0f0fd8f1226cdeb026c7bf36d5'
    'vi'
  end

  language 'zh-cn' do
    sha256 '33e469f2cbba823b58bd320caa8dc806cd9a867b1bafff46fa8e4b01e2b9f657'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'fb54ebc5a93a59079d57c6bf5a8e797016814666a0daecf4a5b01b2e44c36455'
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
