cask 'things' do
  version '2.8.12'
  sha256 '9e70793bf4f6f0d03922c5ffe641605271e9b7d180b972caee58923e96a2131f'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://culturedcode.cachefly.net/things/sparkle/sparkle_en.xml',
          checkpoint: '530acf0d4f03c72498c1c6c5696f322e0ba3bb1c5352a2a1a54f49ccb3b46726'
  name 'Things'
  homepage 'https://culturedcode.com/things/'

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
