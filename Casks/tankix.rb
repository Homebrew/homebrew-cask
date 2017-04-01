cask 'tankix' do
  version '576'
  sha256 '8310acff9c8dc4236fbb7d1e808f5a86b7021f5bdbf11bfab07f2576fc80b069'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'https://www.tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/tankix*',
                '~/Library/Application\ Support/CrashReporter/tankix*',
                '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
                '~/Library/Saved\ Application\ State/unity.AlternativaPlatform.TankiX.savedState',
              ]
end
