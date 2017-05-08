cask 'vuo-editor' do
  version '1.2.5'
  sha256 '0527a79ec76e6e8af434d3c9545c4dda298082eeb384de9fc4a6f1363db715f8'

  url "https://vuo.org/sites/default/files/vuo-#{version}-editor.zip"
  appcast 'https://vuo.org/releases.rss',
          checkpoint: 'f121286a6f0bc023ec94e285ae08ae5fa7a8492f77eab0363d930a7756f989fa'
  name 'Vuo'
  homepage 'https://vuo.org/'

  app 'Vuo Editor.app'

  uninstall delete: '~/Library/Caches/org.vuo'

  zap trash: [
               '~/Library/Application Support/Vuo',
               '~/Library/Preferences/org.vuo.Editor.plist',
             ]
end
