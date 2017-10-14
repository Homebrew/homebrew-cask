cask 'tankix' do
  version '5430'
  sha256 '79e7f20e8b9fb37c68107d7bb55e9fc8ddfcfb34b67f35a55033c3620da99c8a'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/master-#{version}/TankiX.dmg"
  name 'Tanki X'
  homepage 'https://www.tankix.com/'

  auto_updates true

  app 'tankix.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/tankix*',
                '~/Library/Application Support/CrashReporter/tankix*',
                '~/Library/Preferences/unity.AlternativaPlatform.TankiX.plist',
                '~/Library/Saved Application State/unity.AlternativaPlatform.TankiX.savedState',
              ]
end
