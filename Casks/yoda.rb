cask 'yoda' do
  version '1.0.1'
  sha256 '4bed8d0f1e4a1be684fc4faf91bfd828f0f8cb6f7a3e4b60d28f0c4b1a94fdef'

  url "https://github.com/whoisandy/yoda/releases/download/v#{version}/yoda-installer-#{version}.dmg"
  appcast 'https://github.com/whoisandy/yoda/releases.atom',
          checkpoint: '820470140a34e1764cd2e5966a74728b6b01c5b56556b48bee69a9e652b3af3d'
  name 'Yoda'
  homepage 'https://github.com/whoisandy/yoda'

  app 'Yoda.app'

  zap trash: [
               '~/Library/Application Support/yoda',
               '~/Library/Caches/yoda',
               '~/Library/Preferences/com.whoisandie.yoda.plist',
               '~/Library/Saved Application State/com.whoisandie.yoda.savedState',
             ]
end
