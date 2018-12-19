cask 'thunderbird' do
  version '60.3.3'

  language 'cs' do
    sha256 '3ce3f0d3103121709bc4000927fa12368983da0e9296fa9a1da480f6c49d91fb'
    'cs'
  end

  language 'de' do
    sha256 '039da9bbaca16fbdda898d6106180d3b4e2081fbc111b45aa9cbe73a02347d6a'
    'de'
  end

  language 'en-GB' do
    sha256 '95ed3f87949a84c9c2051ef0cc0aa190028cb0b640fbb5bd8894889fe8f9262b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cd4ea6844ed00ecd17e76edd7a38d4e3d7a261f70772a2817f978503094d901b'
    'en-US'
  end

  language 'fr' do
    sha256 '1f760d4bb8c8b56a334fd6e5e6857b6eb7b172481a4866b6ee4b4345d5dd140f'
    'fr'
  end

  language 'gl' do
    sha256 '298129777a1cb11f617b28c0d1b735329a647c8f4023d084ff06d2ce1f9a930e'
    'gl'
  end

  language 'it' do
    sha256 '7eb6d4bb8f72acd4d1d0b4d350b3dceeebb7ef46d516b22ea443522d12d0c948'
    'it'
  end

  language 'ja' do
    sha256 'b0f83dacd73380d9b6ccf3ed82760113b1f9fdafa8e0e96e4d76fcbae03e5033'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd6d329ab256f38859a967ca98ad035f72d9370325e558b5a77e96e223b0a61f9'
    'nl'
  end

  language 'pl' do
    sha256 '0789cab293dcbcacd4159dbc9482bd756424441251b07e4987b3333d35508a95'
    'pl'
  end

  language 'pt' do
    sha256 '09c200a4935191735f08b8a03392ef12f89efbaa129aca07889af2d4ea448cd4'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '4955428d2b8e9b5f72d13b50aebedbc1baf3228a43455310f0a0c5968dfab2f3'
    'pt-BR'
  end

  language 'ru' do
    sha256 'b95593a80590ca11e8424fca065416bc9421f57cf130008860ad6bcef2da98e3'
    'ru'
  end

  language 'uk' do
    sha256 '04a8eca6a66cfe8213a3cce431e49970b265f143eda262432044a78d7f817edc'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8c57ed174c883dc22d57b26f462c0504eecba8ea46a5452c8dc7ac472fc82e2f'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8224be06580da36c7e4731457bd833c7186f233c448c84676c20ff6776734072'
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
