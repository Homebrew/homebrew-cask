cask 'transocks' do
  version '3.0.5'
  sha256 'f0d53681c350ae0d886a4e3f23486f89300f8d37b94e9c3c6dc60074cc944801'

  url "https://www.transocks.com/download/mac/Transocks_Mac_Official_v#{version}.dmg"
  appcast 'https://www.transocks.org/updateInfo/Original_update.xml'
  name 'Transocks'
  homepage 'https://www.transocks.com/'

  app '穿梭Transocks.app'

  uninstall trash: [
                     '/Library/LaunchDaemons/com.transocks.mac.daemon.plist',
                     '/Library/PrivilegedHelperTools/com.transocks.mac.daemon',
                   ]

  zap trash: [
               '~/Library/Caches/com.transocks.mac.signed',
               '~/Library/Logs/DiagnosticReports/穿梭Transocks*',
               '~/Library/Application Support/CrashReporter/穿梭Transocks*',
               '/Library/Application Support/CrashReporter/穿梭Transocks*',
               '~/Library/Preferences/com.transocks.mac.signed.plist',
               '~/Library/Saved Application State/com.transocks.mac.signed.savedState',
             ]
end
