cask 'thunderbird' do
  version '38.6.0'
  sha256 'ad6f9a2727c97b9435584eb1588715fde075c92f3ede559685d955a1212f9bf1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'c829c340e6218d3e47a1044b592feb68c7499625103ae34ba27f94e5ea62eacb'
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
