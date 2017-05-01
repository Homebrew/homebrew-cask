cask 'tankix' do
  version '602'
  sha256 '37bbe6d773b34e2a24729932c2b5b640d8c39a3943852ffe4d2c1a96a1a9e6ea'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  appcast 'http://www.tankix.com/en/download/',
          checkpoint: '4a78434f7f0b1205475be86f7789335b1ffaddfa26c1f9939ca046583244fd0d'
  name 'Tanki X'
  homepage 'https://www.tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/tankix*',
                '~/Library/Application Support/CrashReporter/tankix*',
                '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
                '~/Library/Saved Application State/unity.AlternativaPlatform.TankiX.savedState',
              ]
end
