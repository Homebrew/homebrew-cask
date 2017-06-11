cask 'vuo-editor' do
  version '1.2.6'
  sha256 '6a114d3e266a57d8ce82014784bdb3ead1ca1d2c02d564ade74a805f62a45aca'

  url "https://vuo.org/sites/default/files/vuo-#{version}-editor.zip"
  appcast 'https://vuo.org/releases.rss',
          checkpoint: '086d28c17c3adb3f46d2e71ff73bf030e0462a16c3056887c382d3885af05376'
  name 'Vuo'
  homepage 'https://vuo.org/'

  app 'Vuo Editor.app'

  uninstall delete: '~/Library/Caches/org.vuo'

  zap trash: [
               '~/Library/Application Support/Vuo',
               '~/Library/Preferences/org.vuo.Editor.plist',
             ]
end
