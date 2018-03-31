cask 'thunderbird' do
  version '52.7.0'

  language 'cs' do
    sha256 'c6fa3723ecec19ec81f17dce968a5b01d67f26bcfebe1efc0d9952f7706bd3a9'
    'cs'
  end

  language 'de' do
    sha256 '7e3aedecf2b9920f780f312524d68635ebac80985253a4b6c94d8f86ba16c3f9'
    'de'
  end

  language 'en-GB' do
    sha256 '6405c159f11619aa7cfbd77b1e19f171c4adba81d019ba7b286a132edeeea86e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '62ef79941cda1b71371bcf820660855cf1e16e4ee1940cff0aab3831da77ac83'
    'en-US'
  end

  language 'fr' do
    sha256 '630d47bdd02d8396c328b094a0f538a37e9263098a7779f2f64ca43782e1ec67'
    'fr'
  end

  language 'gl' do
    sha256 '55cb1b535d3fac09726a05e63b431f042835d3756f8d724ecae9b64776cf19f5'
    'gl'
  end

  language 'it' do
    sha256 'f1df4b58b51e98c074b7ce915c92e88ea873cc3298cba7c66149f76066393e13'
    'it'
  end

  language 'ja' do
    sha256 '51157332cedb906baa253d4a218de827a72890eda103844544c1b34b719b3060'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '890959c513463f1cfcd595d3bbb209ef231b919680610d471d2cd24cb9ce41a3'
    'nl'
  end

  language 'pl' do
    sha256 '81c67a814dfc044cc6300dd897575d940302162b7e9e09779edd6e682b52c7db'
    'pl'
  end

  language 'pt' do
    sha256 '73dc3db9e6c991bed6d7481563999efa85dfd6a60723196e5ca7157724796066'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '9e027229b75d199b17825722cb2415e555283870d90800c6d2a01ab45e1522c1'
    'pt-BR'
  end

  language 'ru' do
    sha256 '1b9f407ef1f8bb2c11f6db33092573025695bfc62ccfae38107654970c05e9c4'
    'ru'
  end

  language 'uk' do
    sha256 '3045eb2ba47b17d861ede71754b2ce4208f1f169eab7dac0c027a1085eda6269'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e97ec6d039d18ba2954c01f2a01a3a6ceec1d54f408e65fb62c1268909918918'
    'zh-TW'
  end

  language 'zh' do
    sha256 '072037622bcccc8cd1efdb2cf3b8a2a8d0993927e1658d78cceafa7f636d4c6f'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'ec07cd4215ef9c9bb83260a3becaed2b819b3e42be132787a0c68754faa0d632'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: [
                         'thunderbird-beta',
                         'thunderbird-daily',
                       ]

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
