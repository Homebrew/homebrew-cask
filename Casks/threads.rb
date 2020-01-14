cask 'threads' do
  version '0.4.0'
  sha256 '025669c445510e1ba4511a3bc51dcec2454fca4ce9dfb30c0b3fff95afc18d4b'

  url "https://downloads.threads.com/mac/Threads-#{version}.dmg"
  appcast 'https://d111it5gwc8pcx.cloudfront.net/static/App.4a47906c52618800f007.js'
  name 'Threads'
  homepage 'https://threads.com/'

  app 'Threads.app'

  zap trash: [
               '~/Library/Application Support/Threads',
               '~/Library/Caches/com.threads.mac.Threads',
               '~/Library/Caches/com.threads.mac.Threads.ShipIt',
               '~/Library/Preferences/com.threads.mac.Threads.plist',
               '~/Library/Saved Application State/com.threads.mac.Threads.savedState',
             ]
end
