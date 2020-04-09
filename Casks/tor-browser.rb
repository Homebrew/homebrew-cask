cask 'tor-browser' do
  version '9.0.9'

  language 'ar' do
    sha256 '8dd95daa037ac02455435446ec7bc737b34567afe9156af7d20b2a83805c1d8a'
    'ar'
  end

  language 'ca' do
    sha256 '25eec6ef03501bb20b5fcf84ddee4a8f002c7d5a15d65fd3ea60420e577852d5'
    'ca'
  end

  language 'cs' do
    sha256 '4d6572835385766c30a5524ead6f7f0131a69f0254ee29db198043dd4aa1eecb'
    'cs'
  end

  language 'da' do
    sha256 'deef6c944349b0ec66315f2ca402842ec088d12e01f070de76e2dc6369787339'
    'da'
  end

  language 'de' do
    sha256 '7c2d56282f5a30fb8988b2035c869725129bfbb6f4c0597eabaffb07ddb7273e'
    'de'
  end

  language 'el' do
    sha256 '35423e4248cb4a7d26ab17dfcf883a9a1d7f6845ba06c6a47a9f076862d8176f'
    'el'
  end

  language 'en', default: true do
    sha256 'd0fb45bac30c21f9f0fc21b8bf14df356b04a481708c1e1107ba517d9798bbca'
    'en-US'
  end

  language 'es-ar' do
    sha256 '69c6050f2b5ac00e3ce5a981e99d72b3479b0d90f9c606b415b1b66da6fa1658'
    'es-AR'
  end

  language 'es-es' do
    sha256 'f9f27b74fcbacc9ff9ae5c267a7b10030f357a13caa5c6e3d0cfdb6c88f697be'
    'es-ES'
  end

  language 'fa' do
    sha256 'd16f5e845d09df9bc78e390a308923b2e3323177c434e3e46d47b71746679578'
    'fa'
  end

  language 'fr' do
    sha256 '1c9922aa706bb8bff4c9e09fe88ce9fe3b17bfbc840ff52836248a256043220f'
    'fr'
  end

  language 'ga' do
    sha256 '2ee6a8785157b29d20177eeef5ab690907bb4260c87165e60c3b154d0724a2b2'
    'ga-IE'
  end

  language 'he' do
    sha256 '5b6b7860e2a34b1e1ad30e5650275f5463dab0683c7158a5741ca7f2efdd5730'
    'he'
  end

  language 'hu' do
    sha256 '92a1ee84223c42fdeb87e2c8493ed5927d93d1f62632b567035fe594f6f3d537'
    'hu'
  end

  language 'id' do
    sha256 '45db205b4473b38065b72bf0d2e9ad82d9554e67e3f88830d802b9ed6050bb97'
    'id'
  end

  language 'is' do
    sha256 '0af5ec7b9d8a9bb2b8e16606d438406ed47cecbdd2cd433e63b495e14ace26d6'
    'is'
  end

  language 'it' do
    sha256 'd979dcc59031b4afc07d4863a064bbd63413be57d245558060df39805ae22d7a'
    'it'
  end

  language 'ja' do
    sha256 'e4cfad149818824766257b469d004c2c2c3b07e25c473c54aa46339d2efe09ad'
    'ja'
  end

  language 'ka' do
    sha256 'e05beb19c3849b3db7863e56e39b643cb9acde44fe8e998de731eef8b8b7a516'
    'ka'
  end

  language 'ko' do
    sha256 'f284a38e3871653edf90b2e805b4336a78d07db11c0926b7b05ab7280c2d6af6'
    'ko'
  end

  language 'mk' do
    sha256 '29c58184d85f60f46e1bf86b2274dd4d78846a3c605588f70086923903cc957c'
    'mk'
  end

  language 'nb' do
    sha256 'c1e67d3dd57e31593e182f4c5e48f610b794e479e6c8fcc8171126f30f47f7a3'
    'nb-NO'
  end

  language 'nl' do
    sha256 '3c256bc86762fb3ad818bfb638043ae54030efccf91873928f7cd297ae48687f'
    'nl'
  end

  language 'pl' do
    sha256 '6338864845d7436f0c82a89648fe77d77f457f7d1605c1ab23e4ba149e5c950e'
    'pl'
  end

  language 'pt' do
    sha256 '6fd76d94356aa8bca0b5a4784ef4270e4a0d957727254a9dd57b5a8097e13b25'
    'pt-BR'
  end

  language 'ro' do
    sha256 '359df30fbba4a0109ff899f69f0552e05b6a35a0d48b21de9124f8636c4ea746'
    'ro'
  end

  language 'ru' do
    sha256 'cfeff3570cdbf6c25c0ecd30890fec51bb9c43c4834d4d10662f66d1a834536c'
    'ru'
  end

  language 'sv' do
    sha256 '9731604690e2cb3492c0ffc186164f7dbd37e4f35528f80b92d0d4c1f6ce3016'
    'sv-SE'
  end

  language 'tr' do
    sha256 '71373857215ea4a3148443dcc098a99c90f6385f3dd898eaead0564887fd0233'
    'tr'
  end

  language 'vi' do
    sha256 '5da2a7b67a5ecb3f5576c870ff95f9119a6ec93cb9f26e4b890f1b212b735c82'
    'vi'
  end

  language 'zh-cn' do
    sha256 '96574251b885c12b48a3495e843e434f9174e02bb83121b578e17d9dbebf1ffb'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'd03b2cd5ebd7ef1dc215944253d1070ec64b402389c210081cf95c1e270925b7'
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
