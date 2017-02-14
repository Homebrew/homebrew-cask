cask 'thunderbird' do
  version '45.7.1'

  language 'de' do
    sha256 '2a9f128bed773eafb28e1a17687e42319e2a6db22db1269b775e2821dd1f225c'
    'de'
  end

  language 'en-GB' do
    sha256 'f0ea3365a434681e8da6df6d27651d3499297812c2e80263a9c94f3882598989'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '297aa21c91cf4b83d1bf88103a8c53a034452039f13c3a4da146a2668f7479cd'
    'en-US'
  end

  language 'fr' do
    sha256 '40446db3034bca40d2ee2f50bc80f2a34bd516df98aec2d15f02cc6e4ea81fbc'
    'fr'
  end

  language 'gl' do
    sha256 '2a6ff57bf80b9459ca4973eedc3edcdf1e45bb5d1d2075e19879f8522d244800'
    'gl'
  end

  language 'it' do
    sha256 'c96a7fe7e0662e067057ef185fd6083e8270432380640463abb39dc3f542d2d8'
    'it'
  end

  language 'ja' do
    sha256 '925df210182d732e46e2f276e62f26a7e335f391e2206bd383d49f553b17418c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '64d36ebb079971beeecbf76d439a051896b72389d1ab6f4b9a01e656db54711a'
    'nl'
  end

  language 'pl' do
    sha256 '34996c44da6786592dfcc24f405860131b3812891615f7e113b0db2a168a07f4'
    'pl'
  end

  language 'pt' do
    sha256 'a3ccf168aa3fa2f8716a753b018793cc3dcaeef792ee71e162417aa10c93e31b'
    'pt-BR'
  end

  language 'ru' do
    sha256 '66dd4eb0884ec6422130879e83b3b042243bef2886c1236932534ef625201a80'
    'ru'
  end

  language 'uk' do
    sha256 '4ff1622fe6c4cd9ded23c21be4840e58b11f1a6b24a16860987ede041a683120'
    'uk'
  end

  language 'zh-TW' do
    sha256 '08c112f9db690d27f2559b8290061a9433b13df6fa3553e56f600d953a040a47'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd11ab21c2dcb01c1e8b9e16fc56bf01d73af69da8f87835db9f67fc68a469ee2'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'ee412add136f2d6d0932b250eb49bfbc1b9f4e07dcd1d9a4bcad58ac90322198'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
