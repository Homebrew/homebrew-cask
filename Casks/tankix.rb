cask 'tankix' do
  version '13571'
  sha256 '8e21f38af3f4ac7234b2c7c6184f1a5930090c73296d329fdd8a2366684c94ef'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/andromeda2-#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'https://www.tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/tankix*',
               '~/Library/Application Support/CrashReporter/tankix*',
               '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
               '~/Library/Saved Application State/unity.AlternativaPlatform.TankiX.savedState',
             ]
end
