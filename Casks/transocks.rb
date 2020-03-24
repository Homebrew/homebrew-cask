cask 'transocks' do
  version '2.4.3'
  sha256 'ae29de42a72e4dd41d57ade632c1e05e843ff59d8b8dedd66602882001d627a8'

  url "https://www.transocks.com/download/mac/Transocks_Mac_#{version}.pkg"
  appcast 'https://www.transocks.com/js/data.js'
  name 'Transocks'
  homepage 'https://www.transocks.com/'

  pkg "Transocks_Mac_#{version}.pkg"

  uninstall pkgutil: 'com.穿梭Transocks',
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
