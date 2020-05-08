cask 'transocks' do
  version '3.0.3'
  sha256 '913ef1303afc211b1e08c4ccc9d4387ca2911252bd4c434653f92a8223285436'

  url "https://www.transocks.com/download/mac/Transocks_Mac_v#{version}_release.pkg"
  appcast 'https://www.transocks.com/api/1/app/links'
  name 'Transocks'
  homepage 'https://www.transocks.com/'

  pkg "Transocks_Mac_v#{version}_release.pkg"

  uninstall pkgutil: [
                       'com.穿梭Transocks',
                       'com.transocks.mac.signed',
                     ],
            trash:   '~/.transocks_vendor'

  zap trash: [
               '/Library/Logs/DiagnosticReports/穿梭Transocks*',
               '~/Library/Application Support/CrashReporter/穿梭Transocks*',
               '~/Library/Logs/穿梭Transocks',
               '~/Library/Preferences/com.github.Electron.plist',
               '~/Library/Saved Application State/com.github.Electron.savedState',
               '~/.transocks_store.tmp',
               '~/.transocks.log',
             ]
end
