cask 'thunderbird' do
  version '45.7.0'

  language 'de' do
    sha256 '87af4fa81c50f830329897deb9d6b80c07837eda79d80697b605d09d14bbffc4'
    'de'
  end

  language 'en-GB' do
    sha256 '4a9e0715887383487f05fe9bfd88d578239e0d15f50014e40aab0731975db07f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '0a479d94e36bec5b240e461010faef2133b08c3071c2be7822f161358614e620'
    'en-US'
  end

  language 'fr' do
    sha256 '462181dc95468ecf2253912c1a68f680f8fbc3de758caaa9e0f28d698dd9430f'
    'fr'
  end

  language 'gl' do
    sha256 'aad71bbe1a7b22dd1150ccb19613ccab2d80fd94565e73523a5923915049de40'
    'gl'
  end

  language 'it' do
    sha256 'c4e7911a4b7efb3efb945f2aefe7a71a3a8746da7d839dcf8ce46f4be46952bc'
    'it'
  end

  language 'ja' do
    sha256 'd5925695268fe7dec27a921281d74597d1ff262e8bd5fe5808b274f8dc3c843f'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '2c876863c2683e94a520081f071d238d3731e6c317cfb386441dd639e2fe159e'
    'nl'
  end

  language 'pl' do
    sha256 '3ff4cb6a64014466f7411d27ac5e9f591715fe506f7e9bdcff12b0ba7c18dd66'
    'pl'
  end

  language 'pt' do
    sha256 '4e1560eb9173bde3a25acb702858b0f6704b27d992b9dc2361786da1702b53be'
    'pt-BR'
  end

  language 'ru' do
    sha256 '6808192874b34e8fb68fa5a1e36ddbbc5998399f22225a1d150241dfc39e4359'
    'ru'
  end

  language 'uk' do
    sha256 'ffde5d83b1592570889765371e85840c1368b8161a2c3f92ce86bb0994cddbc4'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1b69f3c4cf0e2f3ec59bdff0c7b0b9f1fe9ed07bd8c018f7d0504ac004ada99a'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e41392fe40f10f5ae0750176ecaefebe8e6023234b0ee3975c49d02b4f8f51a9'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'ee5ad1d4bbc21309f5f2f4ac9f370acb2865866b838d5f624b4b306b6c61e100'
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
