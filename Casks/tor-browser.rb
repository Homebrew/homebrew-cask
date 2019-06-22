cask 'tor-browser' do
  version '8.5.3'

  language 'ar' do
    sha256 'edc49ffd7d3e97db9a5864bcecdcafe2e7685d147e52beaacc7891da54e9fb0e'
    'ar'
  end

  language 'ca' do
    sha256 '20c43312aaf1636e00e2c028a904768faddeaea094f1fbda36209f7d0cc4c2de'
    'ca'
  end

  language 'cs' do
    sha256 '6b7f5cbe0bc871a3e5b4884878ea3479d9901b2e77788d52b2f1a29a5a74b903'
    'cs'
  end

  language 'da' do
    sha256 '6be5d4fdfc6dff5a894ce921a31d1ed65ce3c3700be5038e61fe946d2907e7cb'
    'da'
  end

  language 'de' do
    sha256 'de107ff2fce7469b8c44aa68a77ba0afc98946affc33506864fbb4e09656eb3d'
    'de'
  end

  language 'el' do
    sha256 'b8ce3745a9c082445d3a7b44cefe270f97976909fd75bc6ff85dc9592ba0264c'
    'el'
  end

  language 'en', default: true do
    sha256 'c12fe622a025c714dfe4480e3ea2e623e7225a73e051779ecab8a8c3a989399f'
    'en-US'
  end

  language 'es-ar' do
    sha256 '4f561946f8fdeccc0e4d30c6b2f8f56f827fb092cc080b137c809baa064de7d6'
    'es-AR'
  end

  language 'es-es' do
    sha256 '0b4ddf37be92f49b036bc3dea090ccaaaf60327c313c6e5a6b584ad7e92415f1'
    'es-ES'
  end

  language 'fa' do
    sha256 'c118870ba82329b465f06a8880b4bc4dc6740cabbdb0ad5c9e00f608c1a34e3c'
    'fa'
  end

  language 'fr' do
    sha256 'b9b0a7c40d99e670a2f31476169c7582d4794ddc08ce1ba38f03632b6ecdd46f'
    'fr'
  end

  language 'ga' do
    sha256 '256735e2136637da5b357b3a006cc482006f364c8c3d167f42412858fc5876c2'
    'ga-IE'
  end

  language 'he' do
    sha256 '5a71c190b53111669c4fb6bc79aa2999ee9014a80e55034e61f281fa4b8c460c'
    'he'
  end

  language 'hu' do
    sha256 'df43faf1244127b2376553887c89a016423803927a031cfe4e2080e4f776a844'
    'hu'
  end

  language 'id' do
    sha256 '85948370d43b62ee67f16d6c4ec7d25dc6e9701038439036a9bf927466ff8b7c'
    'id'
  end

  language 'is' do
    sha256 '58e370d7be121449a91edeaa19a814199a254d7764c1295b90a5b341d3800331'
    'is'
  end

  language 'it' do
    sha256 '5fc453564e75aed453ec0c7671bbc0ac869584fa6a3ba25f575f3a93bb267f13'
    'it'
  end

  language 'ja' do
    sha256 '2a9f4b8129482a77a15d5d3e9a6cc61208d78a7c2fd9d1b95fc298c4c06dc51a'
    'ja'
  end

  language 'ka' do
    sha256 '7655bda902d9059c8a00f1139259eeb24cb8a894f8d02121312a41552eb6aad3'
    'ka'
  end

  language 'ko' do
    sha256 'd0701390537c97743d4dd4b74b5557923fb26c690b28056b87e8c175bba5cad9'
    'ko'
  end

  language 'nb' do
    sha256 '489ec22d6917b24dcd423de8e76baf8e91e5011735b0d193a2416fa84e8b3c00'
    'nb-NO'
  end

  language 'nl' do
    sha256 'c7b6e126ef2baba294b67a6956b43623e26340c0fba99ad6d096cb65b55432f1'
    'nl'
  end

  language 'pl' do
    sha256 'f53d6518d74b2614c04d0415e7c5e74111a996d030a57ec0bb67b7def5122167'
    'pl'
  end

  language 'pt' do
    sha256 '1149803c72a4f137fb09369e85e24c2ad4d149bb07bf03cd17c482f393133425'
    'pt-BR'
  end

  language 'ru' do
    sha256 '0368bebeebebc75bb83d8e7ddf1fe0ed767a880cf651a0bfb3f21b41282d317f'
    'ru'
  end

  language 'sv' do
    sha256 '2df7619bbe3963e77152ccff6745d1b3836ae0d3a8ab8dc7cc17387e19debab1'
    'sv-SE'
  end

  language 'tr' do
    sha256 'ffca430658d1d250bbf159f0333eeeecf7e62566d1363576ee91d89087ef664e'
    'tr'
  end

  language 'vi' do
    sha256 '70e33f3fcca872cbfce6ff18f41dfa9e2e961a9cad52abb4e481579b40dd660e'
    'vi'
  end

  language 'zh-cn' do
    sha256 '6cf8160611fdfa24e667ad3c6a2bb20468aeacaece66960a587a71040f33797b'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '720e331450b13a7fd772b41153efab4861d0d2db9681a1ec8b156a68c0b75ca9'
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
