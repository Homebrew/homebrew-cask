cask 'thunderbird' do
  version '60.2.1'

  language 'cs' do
    sha256 'c0e8860d048c06f52715d287136f6768552fae1ba780b515eafe20427965baf6'
    'cs'
  end

  language 'de' do
    sha256 '89aa47406d04622f110458f9832f32c24a0e39a3471b87ce9ab64fcbd0a67755'
    'de'
  end

  language 'en-GB' do
    sha256 '103583e4f035745aacc3dd4c7a0808c2bdc9f3876590bc1232cbce6f68ec4979'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3698009175f9bbae37579ff6cdc4f68779dbef4e2b760082e364ea5229d80626'
    'en-US'
  end

  language 'fr' do
    sha256 '24314e59a9473ad40d7692cae2a14e567710818a93a239af50f50b3607f5d61a'
    'fr'
  end

  language 'gl' do
    sha256 '1811c75cf644e2e149dd617d8d60f75e813fa2a3ee41b6eae055b3952244b9e2'
    'gl'
  end

  language 'it' do
    sha256 '45a4e1f2029572475b8af7f050a84090407d452102179c415b76977028aeec7b'
    'it'
  end

  language 'ja' do
    sha256 '064928a39df8b0523e23cb5a7a8c2fd84f267fedfeda720ae231cd3dc5bfb6b6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '5e9472252fbe50c7988306b2a74b58eca9e5c7677481113e898c741fc64e138e'
    'nl'
  end

  language 'pl' do
    sha256 'f59e3ea15b5b249a4f31cbf9abc5702e168c5ab4c271c0d2f3bbc52bfdbfb125'
    'pl'
  end

  language 'pt' do
    sha256 '22d948bc10d9c9e4fe1e2e0e8a65964b656a8a6f541d15fce87793bb233496ff'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '3d837f564dcd34c7ac92269b6d97c1be85c335f8621ab0e31f327e8744081869'
    'pt-BR'
  end

  language 'ru' do
    sha256 'bce1690405930ace460f000ef516c2f7746501750a3a5c213de5361fcb4aa1f8'
    'ru'
  end

  language 'uk' do
    sha256 '48986a9cb8ab6c63376e2fcc3b37b6cd02357744f8c8b5a0d95e6cf0a462ba55'
    'uk'
  end

  language 'zh-TW' do
    sha256 '903229146227f9923c394cdc727b4a2de8c9232276f74fb07103ccd29f2f6062'
    'zh-TW'
  end

  language 'zh' do
    sha256 '58a7f99b87470cad5b872a85bca4ce281b47239a81e56538ba4689279778fb6e'
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
