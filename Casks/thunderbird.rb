cask 'thunderbird' do
  version '60.6.0'

  language 'cs' do
    sha256 '94615902f8a891e62f8141aeb6032141030151ba67f513367e67c8c1454d1ab2'
    'cs'
  end

  language 'de' do
    sha256 '095ead7dc0d49960079bfb30ada9a8aa888c73add111cf1b477376054656c4b6'
    'de'
  end

  language 'en-GB' do
    sha256 '824890ee5b2f6e1c6b9d2e0045712c5616861338050352f0dc74feaf1bb7cbf9'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a93a91ed06188c32fa2fc346e2dc7ea60f99da2462e352edec046433dab553df'
    'en-US'
  end

  language 'fr' do
    sha256 '31a3c3b2eb6740d13429147dd126d36a80d9030fc649031006a3afa385c90a76'
    'fr'
  end

  language 'gl' do
    sha256 '562aff3daa8ea57623fa6e822f629973794f86937363cd750dbdff80318076ed'
    'gl'
  end

  language 'it' do
    sha256 'd1335113cd94e05363be67a253bc790ab61b36fb600de715f2e6af696c57317f'
    'it'
  end

  language 'ja' do
    sha256 'ff784df4f9d8fdcc0e1c352c8b774d2b9e3fe6bf789f3127db56f2f18abd0db1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'df18ff1c4cfd7686b80305ad82b18bde97e26b56354d087216b506548c83780e'
    'nl'
  end

  language 'pl' do
    sha256 'ac6a022c27842ec61f11d0b2c404213e00235061fab3bd0e71d94e52638f13ab'
    'pl'
  end

  language 'pt' do
    sha256 '1555177d5dc995b64284656eb0afcb53ad9c6b80c3db60ebbf899040355088dd'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '879c877af76a3a51b2a1ab3a23b6744d541db63a4d64cf3b2d4fa6c603dd1790'
    'pt-BR'
  end

  language 'ru' do
    sha256 'e0c28fc127ef470167c8c6c27d83d879e0456eaabaf89bfd32b5c1e0a78ce6d8'
    'ru'
  end

  language 'uk' do
    sha256 'd98820c07b7af8e0e40767b13d6c1a2fd6872a282bf7b71c2a53640922fe9e89'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3701fc2edcc2a9a9b28bf5c0d06a0c6af6220c2f0f79ca8cc906ae4b075aaed8'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1cc25d3669fa8a371bb0e86c6122cb3454fa0ddec970039e9366edce8f329f5c'
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
