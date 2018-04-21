cask 'tankix' do
  version 'visual3-16928'
  sha256 'cbaf6f3876e43635557c91496fc603ac710af1474c6cee4f6fa1c684e753531b'

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
