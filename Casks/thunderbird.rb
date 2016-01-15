cask 'thunderbird' do
  version '38.5.1'
  sha256 '00d84b2dcd3189f42e2a5200bb556c2ac2216437834cf17cc758214ef2c49ef6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl

  app 'Thunderbird.app'

  zap :delete => [
                   '~/Library/Thunderbird',
                   '~/Library/Caches/Thunderbird',
                   '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
                 ]
end
