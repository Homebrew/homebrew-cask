cask 'torbrowser' do
  version '6.0.2'
  sha256 '228ab076c62ee2918d5aaff96369bb92862b3a4161b4d2c883ca66dbf4273620'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
              ]
end
