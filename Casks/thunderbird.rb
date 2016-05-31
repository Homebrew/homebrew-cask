cask 'thunderbird' do
  version '45.1.1'
  sha256 'bf0a169794938900e607c293b261f2b9a327bfd2801ae6967ffa33cac508e38a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '45a3b54afef941e2843951f10ad5663235598d6fd256a72054b79a9871e9f7dc'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
