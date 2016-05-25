cask 'things2' do
  version :latest
  sha256 :no_check

  url 'https://culturedcode.com/things/download/'
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  auto_updates true

  app 'Things.app'

  zap delete: [
                '~/Library/Preferences/com.culturedcode.things.plist',
                '~/Library/Application Support/Cultured Code',
                '~/Library/Containers/com.culturedcode.things',
                '~/Library/Containers/com.culturedcode.things.ActionExtension',
                '~/Library/Containers/com.culturedcode.things.ShareExtension',
                '~/Library/Containers/com.culturedcode.things.TodayExtension',
                '~/Library/Containers/com.culturedcode.thingsreminders',
                '~/Library/Metadata/com.culturedcode.things',
                '~/Library/Caches/com.culturedcode.things',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.culturedcode.things',
              ]
end
