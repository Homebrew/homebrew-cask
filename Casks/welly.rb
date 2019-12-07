cask 'welly' do
  version '3.1.1.1'
  sha256 'f17aa74d8668d02ff7c6eee81ae7e0c06d76a51d4aa50624ffe757c95f498ecf'

  url "https://github.com/clyang/welly/releases/download/#{version}/Welly.v#{version}.zip"
  appcast 'https://github.com/clyang/welly/releases.atom'
  name 'Welly'
  homepage 'https://github.com/clyang/welly'

  auto_updates true

  app 'Welly.app'

  zap trash: [
               '~/Library/Application Support/Welly',
               '~/Library/Caches/Welly',
               '~/Library/Caches/org.net9.Welly',
               '~/Library/Cookies/org.net9.Welly.binarycookies',
               '~/Library/Preferences/org.net9.Welly.plist',
             ]
end
