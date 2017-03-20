cask 'tankix' do
  version '566'
  sha256 'c5ec03c40870befd9176981ca8fb59eea57857d5a702aac4c349ffb71b1d5fe8'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/tankix*',
                '~/Library/Application\ Support/CrashReporter/tankix*',
                '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
                '~/Library/Saved\ Application\ State/unity.AlternativaPlatform.TankiX.savedState',
              ]
end
