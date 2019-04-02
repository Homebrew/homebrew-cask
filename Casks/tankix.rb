cask 'tankix' do
  version 'visual1-39890'
  sha256 'c540ac2b6d044cecc3b622d0cc13e03bd7e560cea8ee72a967f3006eafcef8ec'

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
