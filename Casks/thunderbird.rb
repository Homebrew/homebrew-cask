cask 'thunderbird' do
  version '78.0'

  language 'cs' do
    sha256 'a8e174323bcdd19427be949aefb4bae0c05441b4db51e638438f921f2f2c3efd'
    'cs'
  end

  language 'de' do
    sha256 '3b4bf61a635ce66f8511121d15323bd52ca7692200d85ddd0727d6e4f5148ba9'
    'de'
  end

  language 'en-GB' do
    sha256 '0fd9a3eca9d0c4f2d4fda4e58265b09ffee7bf9f8eb3b266c7a4a7bb53008a2d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ce7f6b89cf5db15bd61679e9fd9f6ae268ebdd6811fb3b36383894b439b785fd'
    'en-US'
  end

  language 'fr' do
    sha256 'd5cf3cb703137bbb0ee89b84fdd127633336d8ccae74e3bead4c5c15a0708826'
    'fr'
  end

  language 'gl' do
    sha256 '302fb97d773b2a2c20bd35b889f6925d766804c4c7d45541d038e32f07d9e59a'
    'gl'
  end

  language 'it' do
    sha256 '02e677c9dbd126bf28c82763f0164928e6f23da36a5e513e6b7223d02a937209'
    'it'
  end

  language 'ja' do
    sha256 '506d4568b32f600c10d5f0730d6581efafca4dc16a71046a94c065c24d43c1e7'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a20203776d1eb90e88dcae009a88fab73c2e4c2495d36fa48afe29ec9cf78509'
    'nl'
  end

  language 'pl' do
    sha256 'e97d27c87f9d7b120fcabcd8af3b49c1d58c0d6f5e256ceb8e481c8e6f138d17'
    'pl'
  end

  language 'pt' do
    sha256 '9d01a66ed37296fcd43c74776156cff10fcf594158d5d3dfc9730474fd5ad30d'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '8f532ea577603a73a2d18a99144a04a76b5c05cdc1cde0e1ab12248081088a5a'
    'pt-BR'
  end

  language 'ru' do
    sha256 '9e7ea68bc432e3f4deff668f53f924ee55835cdfb07b59e0097bcc740da4f659'
    'ru'
  end

  language 'uk' do
    sha256 '5766e73226001c4bf3ec4bd585433a53b0869622860c5e52afb19dea1abe5e57'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e73ebf77cfda0583630657a373246cce3b5291c9c6af6f8bf90df455605ec476'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd1acbe69f96b01d69d905863165d317e6c9f40256105c1d191563dd7fd61e6f1'
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
