cask 'vuo-editor' do
  version '1.2.5'
  sha256 '0527a79ec76e6e8af434d3c9545c4dda298082eeb384de9fc4a6f1363db715f8'

  url "https://vuo.org/sites/default/files/vuo-#{version}-editor.zip"
  appcast 'https://vuo.org/releases.rss',
          checkpoint: 'ce1da614bf825d5c53f68e0c72054b87c685a36277f308054288abf499f7efa1'
  name 'Vuo'
  homepage 'https://vuo.org/'

  app 'Vuo Editor.app'

  uninstall delete: '~/Library/Caches/org.vuo'

  zap trash: [
               '~/Library/Application Support/Vuo',
               '~/Library/Preferences/org.vuo.Editor.plist',
             ]
end
