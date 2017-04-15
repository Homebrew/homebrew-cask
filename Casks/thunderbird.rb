cask 'thunderbird' do
  version '52.0.1'

  language 'de' do
    sha256 '9bc9d626fdc31eb390564fdff2868867f16e80149da56ff76da41eb52c164ce0'
    'de'
  end

  language 'en-GB' do
    sha256 '6336ddf6c277071323a6d0d6f9c7afced748892dbe475fa07f6674bbdd70bc6e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ef51a792e9a02cd1979d8480b0229edf9d4145ef17a0607d4c17d2a616cbae83'
    'en-US'
  end

  language 'fr' do
    sha256 '9852a50bb624511a62b1e1bfa66c1f31bb9db1d4eb9c2a86bf4c187273c71b80'
    'fr'
  end

  language 'gl' do
    sha256 'a91907cc9ac7a39e53f42eac7188b8f19a9b26a374962935669ac45d8d0ae945'
    'gl'
  end

  language 'it' do
    sha256 '39a25ad4af8a1fc252a9482f7dd4596edf888ed672ee30720b37b3936be1146b'
    'it'
  end

  language 'ja' do
    sha256 '3191f111f6f844042ce3e19b311fa7b4fc5e12f791ef7550c18eeec1e7c92481'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '51d5e7d6180094d9f831bc31d4cccb74273646f91d35cb5ecd7d6522b812f2d3'
    'nl'
  end

  language 'pl' do
    sha256 '649f7195b4b398725135a2162a1bbd088c43f7a9319c5880ab207a4eb14df178'
    'pl'
  end

  language 'pt' do
    sha256 'fe6ce2c056f3dfff033b25424a1248ded73cd2d5273a9624a06c2a8fc1593bbc'
    'pt-BR'
  end

  language 'ru' do
    sha256 'd79b9bb8e6ca3a0d84cff45c04718b0e85b8b2d732168b753a952c5f799e2918'
    'ru'
  end

  language 'uk' do
    sha256 'c7ba266d6fe9568765b7ec1dddd81cc44a04e2209297d13922929655da94ea46'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2ab50c418a825f53b7ad57d62f83fbaa88214528d4724f8c7b31befded10bef5'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2c9d276ad0b0a5f876ac7b1a392fe3b02f1254e99742e0ef2f12f6216d9ec01a'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '6ad067c09f0d80a9a1d77bc92edada5aac92c8fa0a7d5253b2e1058b97502bd9'
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
