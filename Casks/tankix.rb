cask 'tankix' do
  version 'andromeda1-23219'
  sha256 '08236f20d3aa5ad5a5b9550ad7b99ca3a7c66225d7404a2d09d191b3dff6cae9'

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
