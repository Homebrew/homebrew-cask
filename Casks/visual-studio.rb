cask 'visual-studio' do
  version '7.5.2.40'
  sha256 '5273cc69193934e9e44d5243b18b58cd31060ceb21b8646fddcd228a8c31f56c'

  # dl.xamarin.com/VsMac was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/vsmac/Mac/Universal/InstallationManifest.xml',
          checkpoint: '90e28111c98e8261b07800d9b33a6b09c6af8f51c315d5976a586bd4c922bc00'
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  depends_on cask: 'mono-mdk'

  app 'Visual Studio.app'

  zap trash: [
               '/Applications/Xamarin Workbooks.app',
               '/Applications/Xamarin Profiler.app',
               '~/Library/Application Support/VisualStudio',
               '~/Library/Application Support/CrashReporter/VisualStudio*',
               '~/Library/Caches/VisualStudio',
               '~/Library/Logs/VisualStudio',
               '~/Library/Preferences/Visual*Studio',
               '~/Library/Preferences/Xamarin',
               '~/Library/Developer/Xamarin',
               '~/Library/VisualStudio',
             ]
end
