cask 'thunderbird' do
  version '60.5.0'

  language 'cs' do
    sha256 '7350732640c89a153087068f8c3b44e5d4e1d6b23dbf3ebca163a4904bb1faf9'
    'cs'
  end

  language 'de' do
    sha256 'f508d514ceec0c9d5d7174992909866488b00578166ba6f2474302ec527187ce'
    'de'
  end

  language 'en-GB' do
    sha256 '6baedb616c42d1e5b5ed181c00e50defd10c6b2092cddf107c7a7cf771da4a17'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c10e0018caed4186edf331cb16c15efd0bd2be9873a988c8f04928cd7be79d0a'
    'en-US'
  end

  language 'fr' do
    sha256 'a35e93259302879882e032b0c73f54b0eca68c3d0877a35d7109de86716f17d5'
    'fr'
  end

  language 'gl' do
    sha256 'dbc6f8f93fb8bf71742628b3e6011c8d8c8c6e9fad1c2c1913856f2bb398434f'
    'gl'
  end

  language 'it' do
    sha256 'e165cf4773d6bdbad41117dda13b5a619215126a2c1dabde904617634eefd958'
    'it'
  end

  language 'ja' do
    sha256 'c255116d49b0110f05065ebbee76930f7103407d017d1e20ec75ed80efb8a6e6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a44d07947ce0fbf13562b39ca4d0c1b7b69fe81131fe744ca705203abb7904da'
    'nl'
  end

  language 'pl' do
    sha256 '9350c19fb7334311c32de8f358cbbbca275b180dee6e0516d5ec7a1742aed229'
    'pl'
  end

  language 'pt' do
    sha256 'd9637c0612c59f0f4ba46b0b6fd41b35cd517a471e2d2ab1696ae0d3960b1934'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '7b5789a9453a53acd567e95c2eb8fb199e9ad087b645c0e2f3a9934d78d86d4f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '44a3bee19ee32fc7a40caa05e967c85825f7b73e2a974ec27a68462ff6914f08'
    'ru'
  end

  language 'uk' do
    sha256 'e5756ee4bee4b81583a622f91ffd1efb81424aa777dbf570763edd5290d4fd7e'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2beb7ea513f3a9ef30fbb48b7797575913d2d5fa3516d876016b5f9e836c2916'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7be11953bfa8b44bd947686305ed0d53286bbf58b1e24de831f597faa1110de7'
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
