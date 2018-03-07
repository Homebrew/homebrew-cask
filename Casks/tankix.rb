cask 'tankix' do
  version 'hydra2-14194'
  sha256 'ea101ead39c4f583d0b4927748de3f63849f2702fcbaba75b341798f42f28d69'

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
