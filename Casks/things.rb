cask 'things' do
  version '2.8.7'
  sha256 '70cc828451302aa3f267759a56ea2c354d16bb591bb571542e3330b6e40b4e9b'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things_#{version}.zip"
  appcast 'https://culturedcode.cachefly.net/things/sparkle/sparkle_en.xml',
          checkpoint: 'e95af743abf659ff9df566c7575fab4fade4cef05432140c77f96d6c5626e563'
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
