cask 'thunderbird' do
  version '68.2.2'

  language 'cs' do
    sha256 '286d0477c7e345cc58270634b118abdecd8cb2083b1aec42b3d839cd9e4a4d6d'
    'cs'
  end

  language 'de' do
    sha256 '31ce97392d01d196fddbc4a1eefad6073531cdd74b175f12a3aea0a4e79d14ae'
    'de'
  end

  language 'en-GB' do
    sha256 '807aaa1078c36c401cf5778a8be8aef56f0e3f84dbfd9a57daa08eb8e071ae1a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9127b19ac6244b7c21c8ac95e5f3b02544760dac44bda0e17a20e2660fa915f9'
    'en-US'
  end

  language 'fr' do
    sha256 '362e5b7c035e7c2b6890d1309316a62b80a43d5d7f9383b4d5ef5c006c2fab4e'
    'fr'
  end

  language 'gl' do
    sha256 '7f0bda1340317a12f559881f3cf8d078e13f4b9af7837da5b564fcd9de503cc3'
    'gl'
  end

  language 'it' do
    sha256 'ffa5f3a48f9f8ada10e0669c5710bec0dc4b43987c32e696f594e8332dac573c'
    'it'
  end

  language 'ja' do
    sha256 '1025b75a222669297c4e26de606f6729ae632cf247556da8f9c82d44dcbb930b'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '1dc3c8ab036c34da1088d6fc74e836e8aaafa3c7fe25b6c8e8f2e5df5edc9044'
    'nl'
  end

  language 'pl' do
    sha256 '6349ee6e87b9514b277df767bc305413c023b416a8cc354cd532067598930923'
    'pl'
  end

  language 'pt' do
    sha256 'f97aa64ea3395dcf018e0014add087a5d1f254c1baaa9e2a15ef290c3c7f3fb1'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '222bc9264cf80ca167aa6230e68bf026d7f4798c6e0c0cb795210c1c9611598a'
    'pt-BR'
  end

  language 'ru' do
    sha256 '2523a3c671a7d9b861a13b86ef342422d57fd215bcfae1c7ab21e40c3d7f7890'
    'ru'
  end

  language 'uk' do
    sha256 '68e4ddc2d6aea54812d23748b605f142b5bff1e599d8724a92406626e5e258d6'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6d6931acd1ebfe96cdbb161c5ccde102fd217ea853f5dfa9c40bcaec1ea44ea9'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b6997b9a9e5176960803179bac4e9c39543cb6096dcc353b581ad43fd3fb2995'
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
