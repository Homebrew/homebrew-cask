cask 'tankix' do
  version 'visual1-31241'
  sha256 '99fb8d79a0549e94f3cf6d78938fd7e82d76754cb703ff36f4ee51af3278e443'

  url "https://static.tankix.com/app/StandaloneOSXIntel64/#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'http://www.tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/tankix*',
               '~/Library/Application Support/CrashReporter/tankix*',
               '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
               '~/Library/Saved Application State/unity.AlternativaPlatform.TankiX.savedState',
             ]
end
