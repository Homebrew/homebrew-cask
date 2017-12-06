cask 'tankix' do
  version '9172'
  sha256 'f16c70e091df0838e9250c6bf9cafb1fba47c3e2f9eca4e70d0c6cc5d558144c'

  url "https://static.tankix.com/app/StandaloneOSXIntel64/master-#{version}/TankiX.dmg"
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
