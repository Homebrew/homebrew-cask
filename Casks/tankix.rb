cask 'tankix' do
  version '5847'
  sha256 '748232a830bf9cd2dc362f2bceb20f7b8255ccdad64c3c9cc2164f7b3c509d14'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/master-#{version}/TankiX.dmg"
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
