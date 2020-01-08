cask 'tor-browser' do
  version '9.0.3'

  language 'ar' do
    sha256 '29f8465f3564a77bd5e9f3c234ff20783bfb9897c3c38c8ebcd88b4d97838c9d'
    'ar'
  end

  language 'ca' do
    sha256 'eac65594eb995a0becf81f53aacf1c08c18980aa78bdd6570619ecf344f7cf26'
    'ca'
  end

  language 'cs' do
    sha256 'b052140323a592f3f79a9b9c6e4cf63595bfc3c6a66056e13918909f85defebe'
    'cs'
  end

  language 'da' do
    sha256 'e87d48fa6e5d3e1fa7fa5fdd5f01bf46208bb811640eca8e51a4f524372f852c'
    'da'
  end

  language 'de' do
    sha256 '8e206121227e5752cd326a0d0c94ae09ae90d6431217a8355955931f6a482c1a'
    'de'
  end

  language 'el' do
    sha256 'b7ef72508d16428da898398c2b377a8c6aaeb0a4edbe44d92e4aba963fbfb37a'
    'el'
  end

  language 'en', default: true do
    sha256 '49508b174b3fffbdcde459ac9a3d6b2ba45df442ac48ebd5ae4cdae4d1d1423f'
    'en-US'
  end

  language 'es-ar' do
    sha256 'd68d1899244997eb09bc7298f8238f04a84ab233eeccc84a5363ab30d82fba3a'
    'es-AR'
  end

  language 'es-es' do
    sha256 'ba546faf68d18b0f15e2944ad9f1d039640941cf33de03c041b416ad641b25e4'
    'es-ES'
  end

  language 'fa' do
    sha256 'd61042d62d5c610a4aff19c641965d381104d595bbbf6ce482727276b268904a'
    'fa'
  end

  language 'fr' do
    sha256 '6126d2fdca3bfe9a64ee1b49a734692c28c90695be7a67a5e4662c3b94b83943'
    'fr'
  end

  language 'ga' do
    sha256 '2c8238ed8f9b16c2b0dca09adb9c02bec1dca5a1d6b3bcbdb8817330b3e45ed6'
    'ga-IE'
  end

  language 'he' do
    sha256 '1b3d0f9523f98ca59d669ae191b5263729c4ede38c47a3cd15c685c55d2fbce9'
    'he'
  end

  language 'hu' do
    sha256 '61ca5248ce8297a73817aecf1c3cf309b612575e71169c7d28a942aa18c0ba12'
    'hu'
  end

  language 'id' do
    sha256 '73a2ef1f53b3c59c743f6a274826129bf9ef41686061c2073e04a5256428c5a6'
    'id'
  end

  language 'is' do
    sha256 '51e7edf1524654fe875053e0406d60cc5aad433871699bf3606ff40d3525269b'
    'is'
  end

  language 'it' do
    sha256 'a8c3abf13b83c32293d7b295b780402366df4b79336c26cb8d45d7aa9825c4dd'
    'it'
  end

  language 'ja' do
    sha256 '1a3c2025a4bedc25d34fd95d5acc4e5da288d054408b59d38f71b3acbcab4da8'
    'ja'
  end

  language 'ka' do
    sha256 '6e485ec58308924651ad916ba63e32fba50499928cd50e278a8a846c8b33a46b'
    'ka'
  end

  language 'ko' do
    sha256 '83bd2c148cb2fd8a9e977e1e5834c86901e9c4397c68e65224fed390bf86109e'
    'ko'
  end

  language 'mk' do
    sha256 'cab0114df9211c565c61b8c6947a9534426c7d7a1e625c49ee2e99df10cc8de4'
    'mk'
  end

  language 'nb' do
    sha256 '8b182af7315f0c734918c2ae0cad242914580615465df862661113d627b7e327'
    'nb-NO'
  end

  language 'nl' do
    sha256 'cd0489b18817c4cd5817f409c79da16532b2c423dfae17ad02e5f817d554f037'
    'nl'
  end

  language 'pl' do
    sha256 '75d593f9319164547b8cbc826bc6c0c75e20a6e13ecac890b80750b0a88f847b'
    'pl'
  end

  language 'pt' do
    sha256 '2dc646ab2eee02afb532746182c0d4de252b3abfd4b3e1f71bf4faf49cb56356'
    'pt-BR'
  end

  language 'ro' do
    sha256 '5ec5b7a4273e007d534e6917e753ede9e43fb13b7e49371b72e5b3b355ed966f'
    'ro'
  end

  language 'ru' do
    sha256 '71231f9316a757401dcaa61b121dac7b3dceced6f68f0ad4e3d6913c6dddd033'
    'ru'
  end

  language 'sv' do
    sha256 '39c7e7fbabad7a1aa109436eda60eff333a9c6192fba2c232d74853329e3478e'
    'sv-SE'
  end

  language 'tr' do
    sha256 'b5a2d8aff11ebb2133c484bbdb8f1ac21eabf7088bd0613fded571bf51e43fd3'
    'tr'
  end

  language 'vi' do
    sha256 '771abe90aa7b04a3163dc1824d5b80a3fd87ff1fa16e5c253a2719f904a9b880'
    'vi'
  end

  language 'zh-cn' do
    sha256 'b87efb9f88cba54aea77f36a4f29576a8632f5e719fc7f4f67b9e80e721812dc'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '197b9af0dd1e7df795f6f6ae1c00bd5a04ecc9e0904a1540bdfc777920e1beec'
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
