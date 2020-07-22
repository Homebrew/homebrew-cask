cask 'thunderbird' do
  version '78.0.1'

  language 'cs' do
    sha256 'ad7d112b593fa2f32220c9996e6d7676f6099f0f548839af8abca3cb8ee24ecf'
    'cs'
  end

  language 'de' do
    sha256 'f6aca97a348d49484a34e246be6cacb0b66268f2145ead9817085c26244e1cb4'
    'de'
  end

  language 'en-GB' do
    sha256 'a17a28ea4bfdcfab87987363414fe6711e6a1334cea8285b6f7361be32ac977c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '859d138390c9a73970cdc6b70b69179f04f9740b48967d75993535731981de15'
    'en-US'
  end

  language 'fr' do
    sha256 'dcd934c090522ba78865293ee428951c39c156751b58cad55514b86e3076be0f'
    'fr'
  end

  language 'gl' do
    sha256 '1d229bb99353fb7127444190d679dac620642fb1c9b1370b0f29ac020ced8514'
    'gl'
  end

  language 'it' do
    sha256 'a9d581d6e3bb0affd2d1e942bb89178d24e6be5194ca036bf639ea83c33e153a'
    'it'
  end

  language 'ja' do
    sha256 'e62e315b8a0aaba6b58a38605886bc38ce295d6337e8fc3ab606bdd38436c725'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd27c4c646d4b482139324617d7a91b49784c215ed903ed28c2190ad683b43e41'
    'nl'
  end

  language 'pl' do
    sha256 'bf3d5074ca14ebd63418b6fa4626311e238cc4201c22530c32552c93a481f9bf'
    'pl'
  end

  language 'pt' do
    sha256 '00fb6565128fc62600ac891c803f2f647ddb68ceca25098cbdaf948d5f67afab'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '25f9b57565a8d282309770ee45e851f62a7329651c86905f1e66baafbce44901'
    'pt-BR'
  end

  language 'ru' do
    sha256 '183cfca926008eee2ce2a9ec76bad7c43ddac87a8c96a900d569c52f4bcdee3c'
    'ru'
  end

  language 'uk' do
    sha256 'e69eb67071ff82751a101d52fd557b1e01ce37d4605494c60ed4aeead3b3ce8b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '265b65f8700635b801b74dc1a0202a63fe96e52dc9b140048a4d65ec57ec48a3'
    'zh-TW'
  end

  language 'zh' do
    sha256 'bb52f95faab53b2f1c0559253a18a8e153883efdf04cd7ee85f9d19f504871d9'
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
