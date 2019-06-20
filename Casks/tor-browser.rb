cask 'tor-browser' do
  version '8.5.2'

  language 'ar' do
    sha256 '402f2965099bae675d20b207bb471d134a381b672d5842321e87bc2587e6d0b6'
    'ar'
  end

  language 'ca' do
    sha256 '97f773f64d3849f098e746d3121e71ce5ec6b5350810ef34172bb97d8a82a0a4'
    'ca'
  end

  language 'cs' do
    sha256 '764eb865c0bedc09e8d4b168aa7391f916fd4fa05651d66ab4d883f1487d7211'
    'cs'
  end

  language 'da' do
    sha256 '2200d3696e4b98f4bf6c622c183e046d2daed6266ac8e64bcc83913c4407cc5c'
    'da'
  end

  language 'de' do
    sha256 '3b33afef67baaed99111cb69cb943d2c8f40e401401669b4b1eff09bc358d209'
    'de'
  end

  language 'el' do
    sha256 'db2a64c0fd2e7dcad8b7f5cb05cd68be70d71f04d1a47da6f00fe14dd973ef25'
    'el'
  end

  language 'en', default: true do
    sha256 'e38633eeb009c60ddbbf051c4905475616da2e875c9f4449b5f2772670a83df8'
    'en-US'
  end

  language 'es-ar' do
    sha256 'a8bc1dec54c205c7fbe4b96c29f4212beac0823fcb314f0737e88b620f6b41b4'
    'es-AR'
  end

  language 'es-es' do
    sha256 '4c279e02da13506d321c3d8027ed23b5df98466a9bff223370fac3b1970c4a28'
    'es-ES'
  end

  language 'fa' do
    sha256 'e0b1e4f535c66afdd177d93b89ca78a779b3a8acdf1751d5216500ae1460da85'
    'fa'
  end

  language 'fr' do
    sha256 '19d41e1bfc573a229828f5838a10bdea53e86b508aa10bc06261ca5cf6bc3412'
    'fr'
  end

  language 'ga' do
    sha256 'f787184b4d6c69119795ddd1b883edd03b4305bdc1b79c2b244c4ecda00d4d18'
    'ga-IE'
  end

  language 'he' do
    sha256 '4cf2b55ce897ebc59dc86d1cd7151e3c88181cde417145bf71238b77433f4f7f'
    'he'
  end

  language 'hu' do
    sha256 '12a1aa66e24265c1b818f76a9b88c52907a40331874ef78ec68db5fb64028466'
    'hu'
  end

  language 'id' do
    sha256 '47f996363de4d8c74fc256f0a1b346742409b341e57c9fff1fd9532f742a03ac'
    'id'
  end

  language 'is' do
    sha256 'c57526b2ec4fb9b34f5a66869c8ea9caaa843c5accd294bc9aa2e6ee88b5c157'
    'is'
  end

  language 'it' do
    sha256 '1e0cff9dec5984a19b94c87426167ee8015cf8aa8a291ca30dc9b8125245574e'
    'it'
  end

  language 'ja' do
    sha256 'fd2241435d30def670f0bf3ec715b3e56c961b3efbc0d55f74f66c2d20fb4294'
    'ja'
  end

  language 'ka' do
    sha256 '88121a112da47f9a91d78453e0ebd680d5049a8c6742df560fa5eabdcd0f0bca'
    'ka'
  end

  language 'ko' do
    sha256 'ea8d4782c042930c8eab95201467e3402435395bda7827b97faab9e053201724'
    'ko'
  end

  language 'nb' do
    sha256 '8161219ef8a00753b2d26731617640ab27afb4b35317c5cafb83eb82f5df8965'
    'nb-NO'
  end

  language 'nl' do
    sha256 'cd41c75a0f1f524512776ca8c38f0ac1bf0026a745db5cc944db07ad6e204422'
    'nl'
  end

  language 'pl' do
    sha256 'd9cb7cb132e2cf49581a90b7f603c1ee56ce208dc8c583af3530873837e3e413'
    'pl'
  end

  language 'pt' do
    sha256 'b7f5fe986ea9c50db67b908cca2ed2a96fc025193e04eccc699e389b1d6fa85f'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c69ccd631113f13f716479d36b3816b1def8b1c718a903fef4463bc8190f6ae9'
    'ru'
  end

  language 'sv' do
    sha256 'b21f5beff44aa7c887a5b4fba5dcfb919b00f2d5ec36bbcf2303845988cc5f9d'
    'sv-SE'
  end

  language 'tr' do
    sha256 '1eddb89db5cf846904844cc7d530f37bb60f5de7f0abc0020a5fbc1a80767114'
    'tr'
  end

  language 'vi' do
    sha256 '5797f6840fad8f2dec5e96d6c98fae0b91d92be1c65bcd4840293e764139c243'
    'vi'
  end

  language 'zh-cn' do
    sha256 'caeff0b078558a1f3bfda1855e93855007b1b9d914e00467b72b627b2b44f7d8'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'b79eaf4e7eed923d0d50fc04008e0de6c9a9ad130480eb6eb16019cbbaae5bf9'
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
