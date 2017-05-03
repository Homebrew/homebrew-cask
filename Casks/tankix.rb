cask 'tankix' do
  version '602'
  sha256 '37bbe6d773b34e2a24729932c2b5b640d8c39a3943852ffe4d2c1a96a1a9e6ea'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  appcast 'http://www.tankix.com/en/download/',
          checkpoint: '1e6fa8824b5c21d343d06850a810c3fea2c29ac05928d2a2678137797bde4555'
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
