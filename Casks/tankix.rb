cask 'tankix' do
  version '5.3.5f1,visual3-38920'
  sha256 'ab566101842943c9709a9c670e9adb88d292d191b906a5227b25878ce21974f5'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/#{version.after_comma}/TankiX.dmg"
  name 'Tanki X'
  homepage 'https://tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/tankix*',
               '~/Library/Application Support/CrashReporter/tankix*',
               '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
               '~/Library/Saved Application State/unity.AlternativaPlatform.TankiX.savedState',
             ]
end
