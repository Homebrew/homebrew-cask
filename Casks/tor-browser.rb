cask 'tor-browser' do
  version '9.0.7'

  language 'ar' do
    sha256 '212c025631f7ee773f41a6ded90a3090fa85a38bc7ca0b34615aaca80ab9b17f'
    'ar'
  end

  language 'ca' do
    sha256 'bf4026770df4adca6a7ee5959c66d55f694077663e8c24725bd9026d7ee59745'
    'ca'
  end

  language 'cs' do
    sha256 '11372a9ac6293eb0d71071e19cd6a7b688ad662a7e35ec870b12b991eb97b274'
    'cs'
  end

  language 'da' do
    sha256 'a6891704360f567c66118c8dc47b7d3c62db1b6b5e74633af950f06c30099d07'
    'da'
  end

  language 'de' do
    sha256 '5b53e6c977dd69ec1a861d13ebb3f187f894fe9dc41333e9da5e8080bc99b6da'
    'de'
  end

  language 'el' do
    sha256 '45d4d5614bb31f2b624870da109973b0cada62b0d3c434d44818526818d14ea5'
    'el'
  end

  language 'en', default: true do
    sha256 'dc92245a3f8adc77eaa8c39959a1b3190b0dc2ce979193f4873b4a8276a0e581'
    'en-US'
  end

  language 'es-ar' do
    sha256 'e76c894f5b9d904efa27192c8c58db429462a061baf499fb0638e0329be42a50'
    'es-AR'
  end

  language 'es-es' do
    sha256 '3ebee2fe10a73d85f7c46037755fcbceca5ed6c6e4fc28f522beb2a3be0d05f1'
    'es-ES'
  end

  language 'fa' do
    sha256 '184484b1961a1edacef45eb920a8548a0e29458bb9284a809c6564bee449042e'
    'fa'
  end

  language 'fr' do
    sha256 'b69a3bef7772d4269f87ff408d013255d058900ff6855b86b61d9c1ea555f0a5'
    'fr'
  end

  language 'ga' do
    sha256 '5c85cc4293416c0db3eda83c252902b06917515f77befcda05b49e64f8825c96'
    'ga-IE'
  end

  language 'he' do
    sha256 '3ff01bbd6ffa3308e8e7c1900e26b8864a297aa616ed05ac499700632a89363a'
    'he'
  end

  language 'hu' do
    sha256 '275ebfdfaec3405b4d46334342e3fc4c0ce846994e2052451c67298c2b8e6ddd'
    'hu'
  end

  language 'id' do
    sha256 '51e63329c4890f7ee549bb4752693a489c668ca93db92d92d7ec1f5a9375917a'
    'id'
  end

  language 'is' do
    sha256 '75d849f828caad28d04557af962c852120aad7f370b466b7f6b704db9bcadabe'
    'is'
  end

  language 'it' do
    sha256 'dc01f60f3fba4ee6d6599d1b10b4ce7e68dd7c89877200d7e14558175fd0fcb6'
    'it'
  end

  language 'ja' do
    sha256 '692b63be7404d3d93198bb80bc0dd9a88623f4d5228c66cd47a1cace1da6ea20'
    'ja'
  end

  language 'ka' do
    sha256 '9562c2cf04dcdfdb1e6bf49e6d85809c794620107ef4d44a7734686df9fc7c87'
    'ka'
  end

  language 'ko' do
    sha256 '38c238b783e32c9de5dedd9b4df35de76662a9a8a2f79a13af3c3c2c24f360e6'
    'ko'
  end

  language 'mk' do
    sha256 '3774b90434ee4162517ff9f4df93be9ea02a0c3c27342d5910abb53f587b652c'
    'mk'
  end

  language 'nb' do
    sha256 'efc0837cbcc8a8d69b29c73cdbaea41b1f4c8286b6f61116b667a5045b830f6e'
    'nb-NO'
  end

  language 'nl' do
    sha256 '196c8f97d809379d2461a8a7e646c541e5b04f77ab567f00dbc01270f8c23b63'
    'nl'
  end

  language 'pl' do
    sha256 '6f1755f81575322e8238b49d2daf5bf5ad2fa7a67843c2508151487ea79d60b6'
    'pl'
  end

  language 'pt' do
    sha256 '9292c7337094458daf97ca278c7bce49df0fdecbe77a45aa7ac7a77e31679d5e'
    'pt-BR'
  end

  language 'ro' do
    sha256 '6b4c350e288a537e1a5d24f82efd4de9b56b1edfc6b30a79d44d38762fe64ba2'
    'ro'
  end

  language 'ru' do
    sha256 'df9874a385e772bcb75fabb12b1b8c2d4e58aa65fab4d32a957d786df4647ba4'
    'ru'
  end

  language 'sv' do
    sha256 '8115b85baef3f48123c81a2b00f274a73cf02f2dc01faa1a611e5de5fbbad44b'
    'sv-SE'
  end

  language 'tr' do
    sha256 'afe67cdc27793cde641ebe46b169a06e94f3809b16b32d9234471328ce21aa62'
    'tr'
  end

  language 'vi' do
    sha256 '780913f0ae28ca5bf1b2132db7c98b3bdc402fb1cf3ae8fd44347213c3bfb7e2'
    'vi'
  end

  language 'zh-cn' do
    sha256 'e22c8afd10e7c5eb0aa0bbaf4325e2e4fb79abd0c811cc7742b8f906d99d01c2'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'e5954e3859c7000f7cd2952e1d7c7c46951f66a7b01ff6b78722310a9041fc7a'
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
