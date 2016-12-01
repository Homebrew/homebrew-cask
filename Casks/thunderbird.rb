cask 'thunderbird' do
  version '45.5.1'

  language 'de' do
    sha256 'e742a57e3b229c6f0a2208ae1b3b1d5c1bd632f61b056c8b0752ce2018d048ef'
    'de'
  end

  language 'en', default: true do
    sha256 '702c09d4939c9da3165032627edb2e46f0e5e5c606dbbc39ee067fe066de03df'
    'en-US'
  end

  language 'fr' do
    sha256 'e886a2e38f71d9e63f010bb39a5ccc15d799ffd0df65b4bf72d218aa76fa06c5'
    'fr'
  end

  language 'gl' do
    sha256 '7bd84d74771e7a3424dd6f890d22d3cf6ed3ec5c3406ccbf9e2f1bc8d7ed0da9'
    'gl'
  end

  language 'it' do
    sha256 'd5049984b234ae166f894b60b8109074d24fcfbddfbcd8cc3066f428f2a596db'
    'it'
  end

  language 'ja' do
    sha256 '6bba72b83060d7bec56ac987e43436020f23bd68bc94d0fd7c9affd573d95f8a'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '24f676b94c2a0fef2417dcc5b569d0bd688d272f552c4713d8f7633fd7e2e621'
    'nl'
  end

  language 'pt' do
    sha256 '3c36c99b1e0ba23eb3e8c5a96d310b6e7a94bb0ff5cce8cf8b81d6bcf9d0b1f2'
    'pt-BR'
  end

  language 'ru' do
    sha256 '4c1db0af9ff8260f8de3727e1da22c64fafd66950bef5427e2f87a9dbe743b2c'
    'ru'
  end

  language 'uk' do
    sha256 'f564a3c280419ceba83610f06a3788ce98730ecf3ef27a6ba88aa1fbc2ea0302'
    'uk'
  end

  language 'zh' do
    sha256 '7a49e7e9140560ee45b285e3caae5041aafef347e2ba8ba6026211709635fe81'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '015a2dd704da9bf22c091e9de39188e18eef35588ddd7ce330c78eb6b2ebe7f7'
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
