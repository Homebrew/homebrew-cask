cask 'thunderbird' do
  version '45.8.0'

  language 'de' do
    sha256 '1ea4426cc5a35ef17fc405eba29264b0d6cc5a286a96b69b4a684ffdc2872047'
    'de'
  end

  language 'en-GB' do
    sha256 'e9530d72adafbf5c5d1b7dd6355533d295e6d8ece2495a103bf90582f8aca980'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cda77d6bf33ce5dc32c1e704f726f7840016080dcdd04939de781854f87aebbd'
    'en-US'
  end

  language 'fr' do
    sha256 '61c1d840c1520220bff4c711866a954213c88e993ca542bde9981c49c2d5dac1'
    'fr'
  end

  language 'gl' do
    sha256 '6b15d86f7bca7e431395bce387d3c91007f467d443b78de474c2a472c43b51f4'
    'gl'
  end

  language 'it' do
    sha256 '1a8a1497c84aa24cf595c9030cc692d6906a8a7ec41fcda62da04debdf4867fb'
    'it'
  end

  language 'ja' do
    sha256 'b767657782673907c7e8a2f6604024acadbd3b2dc54f46eb38635027039201e6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '21231da420a04831c59bca682c30b00b22bd4bf7fbc00ddde1b66d8e780c6c65'
    'nl'
  end

  language 'pl' do
    sha256 '1459d9125bfd4cf7f2433f83c352a7a540c3a32e5c7836ba8cd77d7083f98892'
    'pl'
  end

  language 'pt' do
    sha256 '1af47a513f7f2f14c9c948c033e770edfd8e715843b2d26c7271550957b78e98'
    'pt-BR'
  end

  language 'ru' do
    sha256 '679f3e100e23fd4a0e4e07068b8832c4bfb75850ff3e15c1f2e7edf92df50b09'
    'ru'
  end

  language 'uk' do
    sha256 'eff3ed2395e18925bf08bddf53f69c30c86316ed288a8d767255ea8c30853290'
    'uk'
  end

  language 'zh-TW' do
    sha256 '60b21d4d7200fbc9820dff1d996ab2baccb90050383b72ac3d796e96c03246c5'
    'zh-TW'
  end

  language 'zh' do
    sha256 '0bbe05d97d169796804ee046ba92c3df3871c8982416a3a0cef5c2398701d008'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'f62345f0c37745e26d53719440b4ca34900628912fb41a53346969f64d9549e9'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
