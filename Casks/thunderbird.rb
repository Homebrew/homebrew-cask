cask :v1 => 'thunderbird' do
  version '38.3.0'
  sha256 '67120a0b4e97a973302720121d936589d113adf82996be0a99128cd7d9f3cca3'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'

  zap :delete => [
        '~/Library/Thunderbird',
        '~/Library/Caches/Thunderbird',
        '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
        '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl'
      ]
end
