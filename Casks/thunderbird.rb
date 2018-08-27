cask 'thunderbird' do
  version '60.0'

  language 'cs' do
    sha256 'f15c864137425d59564871e456298f4287c4b3d2d27e0d2356ac80426fa6d3bf'
    'cs'
  end

  language 'de' do
    sha256 '9b463c12c8b1bfa20d540668229f0cc2dc18c0d37693af1e81c6dc86ddb5ab12'
    'de'
  end

  language 'en-GB' do
    sha256 '1e9d73889af04959565324db800b779d69994561ac74d1ca6a2617c6e7863899'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bd5e6c6dc3b38a2700822b94bbffba7908e1247632ed4b6486962bd8234e4445'
    'en-US'
  end

  language 'fr' do
    sha256 '06527ca490ff7ee609050ef56712e5468484f38f74253cfe0b115f105e5d0006'
    'fr'
  end

  language 'gl' do
    sha256 '5ad6f919929e96e261c5548a84bbb2ecb53f936afa462e0ab87b03162804e6d0'
    'gl'
  end

  language 'it' do
    sha256 '8ad348a7dd68cc39002baf095a4f303e353e9df402b1d9bb3f2465d10f4288e5'
    'it'
  end

  language 'ja' do
    sha256 '0f559b4a81646c30eb021aa9a782357b7b976eb8bbe694e32014b6cc2936db46'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd90009c1b28631e2da6490debef386278eb0fe11150531f1579e1c5789904bc5'
    'nl'
  end

  language 'pl' do
    sha256 'c6eb5d38567dbf362dc9a32031c00c73bc895b7cccd051e048d482538250d14c'
    'pl'
  end

  language 'pt' do
    sha256 '1f7ec8e7c56d276d3ffd1b35b940f65f34c201f6402ecdec95167bf683644542'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'a4b97fac5cb8a96488364369380c7cfea5a69feaf21da33efe699f73d18eba21'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c41a094f9e5d5375d2f9d57146fe9f1ff53cfe7b7718efd7e16b597fc4ac5828'
    'ru'
  end

  language 'uk' do
    sha256 '54b7c38446071340f981cb5fa805deedd300fa9cf5cabc990742cee12a1a24b4'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0ccfe694115f45da6c321d406f998afd50cbb1029d2124aa642052dcdb30a363'
    'zh-TW'
  end

  language 'zh' do
    sha256 'db2fc8d711baaccba8b4c73c7a177210af3358fd380a807ef5a2e12446f6ad62'
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
