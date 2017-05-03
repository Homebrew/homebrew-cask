cask 'thunderbird' do
  version '52.1.0'

  language 'de' do
    sha256 'dbfbd958aab9fe127dca4cdf428483c7d1c799a258c0fd8be93848b7b99265a9'
    'de'
  end

  language 'en-GB' do
    sha256 '4890d1dd19d1e9331b4482175415969b0595e228a0381f83995abcf51cb078e6'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '8c418bb2f58976e61fd5c8847e24ba4f3d5049b2ff65cd21fb25c7e9216ccac0'
    'en-US'
  end

  language 'fr' do
    sha256 'eac8d7bbf0cfb740221c29a02b054f4cc709f926f333f0a28b1b9e007f6aaf25'
    'fr'
  end

  language 'gl' do
    sha256 '07e099a9ae123fc6b6fd41681c6ad6bec26656e2af6b8bfa08e57208bbb69401'
    'gl'
  end

  language 'it' do
    sha256 '910777a2644c0ff4050cea990f0017b60955dee9baeab88ec0de324ea54333fb'
    'it'
  end

  language 'ja' do
    sha256 'f0865e8bbbc59dcbeec637198d9c68a1ff8374d16211cf430746620c0cfd278a'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '3722c57cfc4d47c2a31baa3a8aabf6ff1682e01bcab3478d637db3bcecda4bc9'
    'nl'
  end

  language 'pl' do
    sha256 '3bd2eb0dfb966e6289cdab44d82355f01e5f9bac1c606504feab38ae35591fa4'
    'pl'
  end

  language 'pt' do
    sha256 'de472e4bdb3503df977fd163bd10673b4d50adab4dbef3fa3d4b8f3ce26daa7d'
    'pt-BR'
  end

  language 'ru' do
    sha256 '05629cbadecd1e1511b6cfeec5b3f6ce8226bbb48ab73e81f6c579f433342b52'
    'ru'
  end

  language 'uk' do
    sha256 'd91a27c00a0d8384441c16d7f29bc80f559379f09245adb2676b922a2596b567'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b6933940031f7ed4029b12088369bed95ed40a4422f6a30c8e61c1e5290008d9'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3e2665b9fbaef3651bf17726b47dbddf481c164f91525ae413ce41be54345e37'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'e1960df229872381e2acc4561e25ede4ac59068f04eed88a45b52d546d9ea7d3'
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
