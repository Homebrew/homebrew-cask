cask 'tankix' do
  version 'visual3-40493'
  sha256 'bccdfa37464c64087e132380427db4b7aced4c79544bf622d09b686185603110'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/#{version}/TankiX.dmg"
  appcast 'https://tankix.com/en/download/'
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
