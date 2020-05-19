cask 'transocks' do
  version '3.0.3'
  sha256 '913ef1303afc211b1e08c4ccc9d4387ca2911252bd4c434653f92a8223285436'

  url "https://www.transocks.com/download/mac/Transocks_Mac_v#{version}_release.pkg"
  appcast 'https://www.transocks.org/transocks-mac-update.xml'
  name 'Transocks'
  homepage 'https://www.transocks.com/'

  pkg "Transocks_Mac_v#{version}_release.pkg"

  uninstall pkgutil: [
                       'com.transocks.mac.signed',
                     ],
            trash:   [
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
