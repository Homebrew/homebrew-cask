cask 'tower' do
  version '2.6.0-346,421e07c0'
  sha256 '4d1fc9152c781f76b4d6c8846a728356acacc1c33e5c534f38cdb6ebbe6f0a75'

  # fournova-app-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://fournova-app-updates.s3.amazonaws.com/apps/tower#{version.major}-mac/#{version.split('-').last.tr(',', '-')}/Tower-#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.fournova.com/updates/tower#{version.major}-mac/stable",
          checkpoint: '08567549c704d9045c81ce24476d0212ee50a2bf485c0c6264bd9f1c83115fae'
  name 'Tower'
  homepage 'https://www.git-tower.com/'

  app 'Tower.app'
  binary "#{appdir}/Tower.app/Contents/MacOS/gittower"

  zap delete: [
                "~/Library/Application Support/com.fournova.Tower#{version.major}",
                "~/Library/Caches/com.fournova.Tower#{version.major}",
                "~/Library/Preferences/com.fournova.Tower#{version.major}.plist",
              ]
end
