cask 'things' do
  version '2.8.7'
  sha256 '05f871d70787543755829ee5ade6db7f569c985fb8f85ccbcf6af86ba8153cb5'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://culturedcode.cachefly.net/things/sparkle/sparkle_en.xml',
          checkpoint: '760a2436a621059a9baa6d64984a181ff5893af3fa1448c068f31b318523ec0c'
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end

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
