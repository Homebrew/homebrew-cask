cask 'vuo-editor' do
  version '1.2.8'
  sha256 'd3d427667bdb206a1b90163690e1f90907cb468d0ffa17d1b7bf7a49df338cf5'

  url "https://vuo.org/sites/default/files/release/vuo-#{version}-editor.zip"
  appcast 'https://vuo.org/releases.rss'
  name 'Vuo'
  homepage 'https://vuo.org/'

  app 'Vuo Editor.app'

  uninstall delete: '~/Library/Caches/org.vuo'

  zap trash: [
               '~/Library/Application Support/Vuo',
               '~/Library/Preferences/org.vuo.Editor.plist',
             ]
end
