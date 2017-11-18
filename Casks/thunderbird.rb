cask 'thunderbird' do
  version '52.4.0'

  language 'cs' do
    sha256 '0e67c76a3d601bb9e3ced2ae7ae57e1b74df35408391c1e6644646a419bda992'
    'cs'
  end

  language 'de' do
    sha256 '13ed860b36d17d1801edc2c567b1c0ee86c41cd59bd396b3b62df13fd70cbd76'
    'de'
  end

  language 'en-GB' do
    sha256 'fc5fa5b26083225f9616dd4209eaa0f11aab67d786a6e9999b9d29545e7daf81'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '624714f188daecafaad14ad756ba11715dcb5e286f7f8e2177c3164ba8903784'
    'en-US'
  end

  language 'fr' do
    sha256 '673a6bf285a92bf766254d60463c103a5d74e820cfcbb957d598192bc22f650c'
    'fr'
  end

  language 'gl' do
    sha256 '6a23ae2e761b012b2c1ecee84c60bf1ab698205720d9714ebb5d305a84f9c58c'
    'gl'
  end

  language 'it' do
    sha256 'd99677efd7f409ef46d1a749d99aec7bee423089a7d026f881c03c7fcce315dd'
    'it'
  end

  language 'ja' do
    sha256 'b81491185a7eebc806cccac48b1e97ef4edb24e9d1fc26948880296e75f491b9'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '6aa6a8cc2bce5bb81aef335815e41b8e7553108fd33fee6c7e01b4df5013fd4f'
    'nl'
  end

  language 'pl' do
    sha256 '94205dc0dd2a357e87bea73f48fc4c190523d61121a302de9a35d24be6b59182'
    'pl'
  end

  language 'pt' do
    sha256 '3241274f7a21cf944ca98cb268b7e8a1ad757d6f9822618ed8c75140fcd0a22e'
    'pt-BR'
  end

  language 'ru' do
    sha256 'bc3f1814f8d69f0e4873e34493d8e07fc7ff60d097dbdce0994cad087bf5c8c3'
    'ru'
  end

  language 'uk' do
    sha256 'c4010ee70a3cfb459e9c84ff9c34f7138d6eb731f5435381ad6d9b6284481119'
    'uk'
  end

  language 'zh-TW' do
    sha256 '72f70fb45b654af6c80d1b555ecbdeaec31f5e0f605e0865d80fa327b022dcd9'
    'zh-TW'
  end

  language 'zh' do
    sha256 'cfe61dbcba8b018d7be8c79af00a4fcaf6410c490bb6820beb1b14c64275c6ca'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '0b7c668b0b71f53f2daa451dd06e30181f416104f1e7f75bb74d8daab6deae6d'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
