cask 'tankix' do
  version '560'
  sha256 '1630d5437bbdc01d4ff365e168e63bc58084b226a6415fca4d0b1c00d7a3403f'

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
