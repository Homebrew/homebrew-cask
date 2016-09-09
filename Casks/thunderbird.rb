cask 'thunderbird' do
  version '45.3.0'

  language 'de' do
    sha256 'f4daf70019bee14db81dd286fca77e6cd22f13682fd6bd65242fe52c22f0b75d'
    'de'
  end

  language 'en', default: true do
    sha256 'd00599ab893f73cb74eafe58fae6135a5fd398b73d91822d5094831042af8061'
    'en-US'
  end

  language 'fr' do
    sha256 '4579c2d343a09d5a2ed0909455cc2a8d4ddc43a0760cabbf3cfa64cba871c222'
    'fr'
  end

  language 'gl' do
    sha256 'e55163af518cd04c5226adca7e7f7ab24d82c7ce78964e77ae931ca7d129c86b'
    'gl'
  end

  language 'it' do
    sha256 '9056799a7588480f2942ab5d7bc26608a8d7cc672b15acaf21aa8f2624cf9da6'
    'it'
  end

  language 'ja' do
    sha256 '0b7b46c00d56abcff68f6b8bbc89c40f267c2163c79f48e9fb01db2eedb840d4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '17dfec5caec0216dd5d2caefc2284c354514434ebae2117d2a9639d369a0668a'
    'nl'
  end

  language 'pt' do
    sha256 '52deef211b46c17b1184894b5313e27b963d99d2acf36229a97727549c68b680'
    'pt-BR'
  end

  language 'ru' do
    sha256 'a6f7da29d250085589ad2a3318f4035ddc29c1c4a5d219a09fbe38b6050bcf4e'
    'ru'
  end

  language 'uk' do
    sha256 '41ea1e0b5e168ce21a6eb07fe2989ff05c67312fbe8c47972b207beda91a1113'
    'uk'
  end

  language 'zh' do
    sha256 '1e426a8df0ff6ef185eea63814517f81c24be717357b4e2b648fd50000755ee2'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'd879948f812a61892e6e65c7652d35a8b0cff009efa920ed62f6658cb86d75ba'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
