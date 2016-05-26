cask 'things' do
  version '2.8.4'
  sha256 'a46b7bd62c39a381a13cdcfc2a9523ac90c0b12a6e7d5c239ef0f042a9457028'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://culturedcode.cachefly.net/things/sparkle/sparkle_en.xml',
          checkpoint: '9b918aa150cd88fe2bf30879792bff1e232d20460db5f2cacb9a132924b552bc'
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
