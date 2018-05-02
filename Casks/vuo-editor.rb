cask 'vuo-editor' do
  version '1.2.7'
  sha256 '7210b425fded394733c7b00e4cd5ba6128bd41e21b5ba83108473d771d1443ca'

  url "https://vuo.org/sites/default/files/vuo-#{version}-editor.zip"
  appcast 'https://vuo.org/releases.rss',
          checkpoint: '5af5f75a78c8413f6336811d0f2628f3c1af1569140970c19af0df88c3d9da71'
  name 'Vuo'
  homepage 'https://vuo.org/'

  app 'Vuo Editor.app'

  uninstall delete: '~/Library/Caches/org.vuo'

  zap trash: [
               '~/Library/Application Support/Vuo',
               '~/Library/Preferences/org.vuo.Editor.plist',
             ]
end
