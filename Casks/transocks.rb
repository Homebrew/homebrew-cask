cask 'transocks' do
  version '3.0.5'
  sha256 'eb83e7122fdd63c779f744466e0378df5b2694817ee62689ea57ca30309f5551'

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
