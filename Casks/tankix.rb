cask 'tankix' do
  version '603'
  sha256 'c1567c756f6f8cc3c4baf05205e584988c1153cf9180ef4a5988c663613cd3ab'

  url "http://static.tankix.com/app/StandaloneOSXIntel64/prod_#{version}/TankiX.dmg"
  appcast 'http://www.tankix.com/en/download/',
          checkpoint: '4bf3009e12c8b5019cbaf4c0842b92a369c026195e752ed04a1c5949890cf6d7'
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
