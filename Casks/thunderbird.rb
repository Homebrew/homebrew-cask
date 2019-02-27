cask 'thunderbird' do
  version '60.5.2'

  language 'cs' do
    sha256 '5e6dc7ca5d8aae8e52966ad785b85fe46dbaa162b8704d24758e6eceae990b08'
    'cs'
  end

  language 'de' do
    sha256 '3579ebd85b5caff35d88da786dabadc661a3c31e0929abc87f5b61d3c5d512c7'
    'de'
  end

  language 'en-GB' do
    sha256 'bf903b881a757deaa44da724f084e22f434473a46137c0656c1a3a4de5d78307'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c6327276ec7c3d9b06679dbabb347ed9977027faf64a3a2f698a0fe546a7d1dc'
    'en-US'
  end

  language 'fr' do
    sha256 '6ebfb313a2c6e30d16904c76f6fcc25503d238851a33b4adc38665a98d0f63e5'
    'fr'
  end

  language 'gl' do
    sha256 '3e72822e4d6ec125aef5e00174029affb6786d8a2c81dea9fed92ed6ec3720c7'
    'gl'
  end

  language 'it' do
    sha256 '10e7b7b2b764faab0ae84c0ce49f079b9e2ad9bc2e9100d26ed36c878c64ef47'
    'it'
  end

  language 'ja' do
    sha256 '2cb87e16b529edb660561c97781cee9ff1c90dcbcadd8f64803c71cb85bfcf96'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'e10ae2f0241789000242316a972e82fa742ed5179357b70b7749fd8d53afa06a'
    'nl'
  end

  language 'pl' do
    sha256 '7df61e0511ee70d599665befa355511e53e3f7ad18a9366d03c6d307515cab21'
    'pl'
  end

  language 'pt' do
    sha256 'e7913d1431ce5943030cad1e6825bf4e545b4d9a198224c74ec482bf7fed8864'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'bf15c71e3dd9a2b541e405469a2d03ce02a406c662f8bbe0af9c4d096929353a'
    'pt-BR'
  end

  language 'ru' do
    sha256 '5c112e6dcc3032b420060c8fde00f57a759863a4a8fe9a2de1d05daef75edaa4'
    'ru'
  end

  language 'uk' do
    sha256 'b24bb78f0fa193bffbf9f5a0316218f38c109de42bcc5685870dfa64fcc4757c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '92978f3a5f80c470d915fdcd81e556456eb93fd630c654e5fb223bb667abfaf4'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e8bc7b63a612cdd21bc43cb45173d8b1365b813e8f8f612be0fcc43ac46fb401'
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
