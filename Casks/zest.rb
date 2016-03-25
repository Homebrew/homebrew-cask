cask 'zest' do
  version '0.1.1'
  sha256 '9405fecb40731b47bb357e87714711afe6d1f6a9c3a4fa9d01b0109da9c3f947'

  url "https://github.com/zestdocs/zest/releases/download/v#{version}/zest-v#{version}.dmg"
  appcast 'https://github.com/zestdocs/zest/releases.atom',
          checkpoint: '070f49a40e5db4448424a7ab4305fd05ecfee703f14e99b76c776961a760eed5'
  name 'Zest'
  homepage 'https://zestdocs.org/'
  license :mit

  app 'Zest.app'

  zap delete: [
                '~/Library/Application Support/zest',
                '~/Library/Caches/zest',
                '~/Library/Preferences/org.zestdocs.plist',
                '~/Library/Saved Application State/org.zestdocs.savedState',
              ]
end
