cask :v1 => 'thunderbird' do
  version '38.4.0'
  sha256 '9d2b0596d38cbfb17a70a7682ec630ead4181212f349106f7a59ec15a5fe080f'

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
