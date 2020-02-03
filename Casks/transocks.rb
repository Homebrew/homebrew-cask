cask 'transocks' do
  version '2.4.2'
  sha256 'f53cee427d8b48ff124007476a240d78a3a7a4381da10157452d2a5b0d1f0bb1'

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
