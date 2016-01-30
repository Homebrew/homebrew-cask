cask 'thunderbird' do
  version '38.5.1'
  sha256 '00d84b2dcd3189f42e2a5200bb556c2ac2216437834cf17cc758214ef2c49ef6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '01d2d46414ba8b8783d0de7d96ae2fb3e0d4e06830c9714fa7be41e1c692f824'
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
