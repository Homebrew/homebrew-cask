cask 'tankix' do
  version '599'
  sha256 'ea0ad56ad9f767947817930d4278118534629de39ec1c2fca69adc83b941b2a9'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  appcast 'http://www.tankix.com/en/download/',
          checkpoint: '8ea7ac137f631e79f4d1a2d461d6864ff072ba6e78d62be32bb28db1e7fca6fb'
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
