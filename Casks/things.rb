cask 'things' do
  version '2.8.10'
  sha256 '7e8b5a59aec0448fb4417c27b7a3874dae5b82b156a20187e7873c305f7b9fbd'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://culturedcode.cachefly.net/things/sparkle/sparkle_en.xml',
          checkpoint: 'a04799d4814f245dc819b97b1372a6ca3fe4bc2da75d02f185e2e3e4e3ec05e3'
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
