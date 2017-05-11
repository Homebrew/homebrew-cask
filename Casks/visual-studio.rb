cask 'visual-studio' do
  version '7.0.0.3146'
  sha256 'd0e8804b15498c58738ca88a01895e8e1601671e94321630f9bded1d3b007675'

  # dl.xamarin.com was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'http://xamarin.com/installer_assets/v3/vsmac/Mac/Universal/InstallationManifest.xml',
          checkpoint: '54618531df092f73e61a1658cfdaf83081edebaeb924a8d0d46ab022b46175dd'
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  depends_on cask: 'mono-mdk'

  app 'Visual Studio.app'

  zap delete: [
                '~/Library/VisualStudio',
                '~/Library/Caches/VisualStudio',
                '~/Library/Logs/VisualStudio',
                '~/Library/Preferences/Visual*Studio',
                '~/Library/Application Support/CrashReporter/VisualStudio*',
                '/Applications/Xamarin Workbooks.app',
                '/Applications/Xamarin Profiler.app',
              ]
end
