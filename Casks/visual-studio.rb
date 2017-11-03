cask 'visual-studio' do
  version '7.2.2.7'
  sha256 '4b81902383ee60da1f6386d21836c46a85f3207a7d73f208829949bb485252df'

  # dl.xamarin.com/VsMac was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/vsmac/Mac/Universal/InstallationManifest.xml',
          checkpoint: '90e28111c98e8261b07800d9b33a6b09c6af8f51c315d5976a586bd4c922bc00'
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  depends_on cask: 'mono-mdk'

  app 'Visual Studio.app'

  zap delete: [
                '~/Library/Application Support/CrashReporter/VisualStudio*',
                '~/Library/Caches/VisualStudio',
                '~/Library/Logs/VisualStudio',
              ],
      trash:  [
                '~/Library/Preferences/Visual*Studio',
                '~/Library/VisualStudio',
                '/Applications/Xamarin Workbooks.app',
                '/Applications/Xamarin Profiler.app',
              ]
end
