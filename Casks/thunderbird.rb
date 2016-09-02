cask 'thunderbird' do
  version '45.3.0'
  sha256 'd00599ab893f73cb74eafe58fae6135a5fd398b73d91822d5094831042af8061'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '28e0bfc5ee773a82e07809882874d5ad51ec035bf52445873bcfe400bd114c3b'
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
