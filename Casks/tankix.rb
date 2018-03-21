cask 'tankix' do
  version 'hydra3-14759'
  sha256 '35c5a51a15c0a3245fcd0fc635a3d0c76cc052002cf61032fd9eb1c5195978ae'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/#{version}/TankiX.dmg"
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
