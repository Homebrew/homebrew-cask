cask 'thunderbird' do
  version '68.2.1'

  language 'cs' do
    sha256 '42e9d68dbdc55737e94beb2d5ca9feb8b7bdb5595af44f762a7e7374ee1542ac'
    'cs'
  end

  language 'de' do
    sha256 '645dd8b8562b71685026a38146177e2b2bf98682d2e8c6cf50e781d272365f28'
    'de'
  end

  language 'en-GB' do
    sha256 '078b869716f3ce15ef6859a90963e18eb1e833e4bfb5751e6cd7b14471a14ec0'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ee958d87a62148603dc22f214cc614672790e315c407beab98455097dc783844'
    'en-US'
  end

  language 'fr' do
    sha256 '3f478fd52d7d672be7054f077398356769ba2e97a5f8799a18d04ef3a932508a'
    'fr'
  end

  language 'gl' do
    sha256 '2334660bc2debdc6e4163e0ab9f63ae96081f59cc1e2f9119cb46d0ff371aa91'
    'gl'
  end

  language 'it' do
    sha256 'ae9ce349766ce9201fe30c31a00ac52a6c088c48705478e8d013d81ab6cc8406'
    'it'
  end

  language 'ja' do
    sha256 '91d88ec05097e90d37cbd4004aa6aadce1ee7aa9df15c78d16020ef115b9c057'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '258a560acf60e7e480bd930b811a46a1abca5a9fd26fbc2780d49395a62412d6'
    'nl'
  end

  language 'pl' do
    sha256 '8711d6024760a54a6052592d24c42ecf910f920f6fe611157b01b920dbf83116'
    'pl'
  end

  language 'pt' do
    sha256 '54206086abcd21971ad75348c9ca638d24759e8b709ed3d421caaddb66c3807e'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '73225789bfc1089d2011a070022212d1b6046858ef418cf79901493513cb8dba'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c13b7a6e562dd7baf03f76933f70f84d526eeaf3bb8b5f78e59ea2c8a8ad7ff6'
    'ru'
  end

  language 'uk' do
    sha256 '98ef0f4df2e1d961a1bef87a23a0eb1fbfb181a389932ede25842fb7da788897'
    'uk'
  end

  language 'zh-TW' do
    sha256 '35d8b5ee59117af0d59308182a0fdba7baa6c51963b60bb705011400e9147eb5'
    'zh-TW'
  end

  language 'zh' do
    sha256 '746a0ee9e8cd2b316b75acb7655bbfcf5a99b7ebe32c26df69783e129c86bfe0'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast 'https://www.thunderbird.net/en-US/thunderbird/releases/'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: 'thunderbird-beta'

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
               '~/Library/Preferences/org.mozilla.thunderbird.plist',
             ]
end
