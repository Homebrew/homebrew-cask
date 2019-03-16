cask 'tankix' do
  version '5.3.5f1,visual3-38779'
  sha256 '3e1481d73ae5837a2fef12e49ac9f60dccde7adeccc3e83deee7edae77ab79bd'

  url "https://static.tankix.com/app/StandaloneOSXIntel64/#{version.after_comma}/TankiX.dmg"
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
