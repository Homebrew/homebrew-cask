cask 'tankix' do
  version 'visual3-41947'
  sha256 '242c4a588191689434a08e6bfb2fb8a94e74a1c8ad866e29e2f12ab6c41d40e8'

  url "https://static.tankix.com/app/StandaloneOSXIntel64/#{version}/TankiX.dmg"
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
