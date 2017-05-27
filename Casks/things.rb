cask 'things' do
  version '3.0.2'
  sha256 '12db712c72762683117ac981ad24bbc6b6ab5f8eaad92a055e5e1337b38cd830'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/Things#{version.major}.zip"
  appcast 'https://culturedcode.cachefly.net/things/leopard/sparkle/sparkle_1.4.8_en.xml',
          checkpoint: 'cd06fe3a9cbcc04efdaa8d0fb4184a50ceb7e42e5b647e66b13ac9f9eca922f9'
  name 'Things'
  homepage 'https://culturedcode.com/things/'

  app "Things#{version.major}.app"

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
