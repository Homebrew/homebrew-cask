cask 'tankix' do
  version '12339'
  sha256 '21d23bbae8257936c91de808543c7947391615cc7adfb5a7d559273480f163a6'

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
