cask 'tankix' do
  version '558'
  sha256 'b75134f10fa2c431d106bedc17e268b7d90493610e16b33e4684d377e65edecf'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  app 'tankix.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/tankix*',
                '~/Library/Application\ Support/CrashReporter/tankix*',
                '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
                '~/Library/Saved\ Application\ State/unity.AlternativaPlatform.TankiX.savedState',
              ]
end
