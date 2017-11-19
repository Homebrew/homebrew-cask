cask 'tankix' do
  version '7912'
  sha256 'a50a1e1070145f738de133e56340d823028d2222e9a6ac3b6d592359ffe07940'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/master-#{version}/TankiX.dmg"
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
