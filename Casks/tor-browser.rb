cask 'tor-browser' do
  version '9.0.5'

  language 'ar' do
    sha256 'de72e61e327d5c66495f793128f99372aec7a51368fc88d4cfc63d3585b4d920'
    'ar'
  end

  language 'ca' do
    sha256 '36359b0b9c5487a11dafbdd0f68287b4e4c74f4cd876804e7c9a194a324401c6'
    'ca'
  end

  language 'cs' do
    sha256 'f9845b9bd888fbc3e20aa1f3eb134a0827683616972365a6c6df4b62528b61ee'
    'cs'
  end

  language 'da' do
    sha256 '9caa1223c64a577311cb05125f749e2fea0df51f8ac4a44078c3b2078741eca4'
    'da'
  end

  language 'de' do
    sha256 '605e5fc8912a5659848389e50dcc14e93f87071315ab8cca8ac16e92c62c96d7'
    'de'
  end

  language 'el' do
    sha256 '217685be3b965e0e5bdc03519b58b95ca83fb8e2ea13787f0d3009bfd3951cb9'
    'el'
  end

  language 'en', default: true do
    sha256 'f89b4169436cb325e28cfa4249d90737c58920635be0d56c111a2c89b9a00d54'
    'en-US'
  end

  language 'es-ar' do
    sha256 'e9f3bafb6f9a08a8a8ca44bed265dea8746990951db288ba2678a0131d072012'
    'es-AR'
  end

  language 'es-es' do
    sha256 '5570452e6b9741409ed1ae6c3dc7faa78067549b178f488e7c4d5cb8d0c44730'
    'es-ES'
  end

  language 'fa' do
    sha256 '7ae8f2fbd3dc06e8e6dba69aa821e04e6f20690ea4769f6fd74381c7809ada8a'
    'fa'
  end

  language 'fr' do
    sha256 '66441a4e4a0db9cd2d4a720c9fe51f5d1ec7bb602bd73a0d927160989275a794'
    'fr'
  end

  language 'ga' do
    sha256 '3464c0ba7bfcf070e66d579ad6238d9d68529efcdfb05663a6a13bcdf1e4d483'
    'ga-IE'
  end

  language 'he' do
    sha256 'a53aee1df8683a174fc1ab12e3f015678a45db81ea6346e868d699447cb98554'
    'he'
  end

  language 'hu' do
    sha256 '3fab90eceebbdda4f766224d6e9c57d9d117a97b775f6190061c40f2f6ca9e79'
    'hu'
  end

  language 'id' do
    sha256 '584bdc1ac518b381df1415e0c34a1882a0a82a5b4329097d8c5d4d9a7641cf6b'
    'id'
  end

  language 'is' do
    sha256 '4ef0b55df78acb319686ae0f4c4cb624c1732beb70aee182eb24854d8c32ec58'
    'is'
  end

  language 'it' do
    sha256 'd529b1cfeed808ed6e6d3bdc63babc3ddf90c759a40604785438763799af417a'
    'it'
  end

  language 'ja' do
    sha256 'e84f5059af28f00e2fe9737518ed21bd3690be8d19f4157a7b2ec9f957aa603d'
    'ja'
  end

  language 'ka' do
    sha256 'f1e75050e4aaf8e6e4a51f2d6b009c5bdeee56a2784b9cafe1edbea02b4d8cc8'
    'ka'
  end

  language 'ko' do
    sha256 '64826e5c8cd6d4074f8014a90457f6fe9bd8d5918b9e994b371699fff6d99952'
    'ko'
  end

  language 'mk' do
    sha256 '140363989fcde0efce0e4def78923dd3414b85f35cb41fab01f39e2b1aad48bd'
    'mk'
  end

  language 'nb' do
    sha256 'ec9dd9ba837620a1d8123175e70d5ad2f66185190ed2660c0141d1f8f9a1e970'
    'nb-NO'
  end

  language 'nl' do
    sha256 'e874594e9511271f8803d08833c00c25ab132515248081190f171c53fc253c1c'
    'nl'
  end

  language 'pl' do
    sha256 'c93621a5c14f8f9511cd4fa9d3f11e2e07dd3e7646a9da61a75c987d53262139'
    'pl'
  end

  language 'pt' do
    sha256 '4e6b484b5c3e66b4ce9c60cb2421fc44142826a33f5c48d3496191bca95bd46b'
    'pt-BR'
  end

  language 'ro' do
    sha256 'e90ad65099599ed8fdb49f0e661cfeebe9db172248f89f72e040dcd83065ca1f'
    'ro'
  end

  language 'ru' do
    sha256 'd5c477719de7063207c765023b36e8a72a51e8628d7ca1a78a0740420484337d'
    'ru'
  end

  language 'sv' do
    sha256 'a6c986c4a1fba3ca8dc09e9d8848c06ac49503e15b3395bac2442eee10bbf290'
    'sv-SE'
  end

  language 'tr' do
    sha256 '14dc73eeb1bffd026d4b709e5d427c6299bc7a23e7b6c9052f7626c2f9f61740'
    'tr'
  end

  language 'vi' do
    sha256 '1c9f9c6cbd908107c631bc7cee7071a2e0d610cd2baea74572a3a5671aea30f3'
    'vi'
  end

  language 'zh-cn' do
    sha256 '7cb206338fb67c91dd0ee9068374f669e052f97c2f1b30201a7d7c3be567f0a8'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '4ac295ff64554d1ffd2859ebee3b1d9d2a8d8ec8e2e2b0ac1c207305e20d8ed2'
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
