cask 'visual-studio' do
  version '7.0.1.24'
  sha256 '0a8eecf4e8ed430fa39f9b6097e4479d8b1f8640a0434de143ea6c13e0fac5f9'

  # dl.xamarin.com was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'http://xamarin.com/installer_assets/v3/vsmac/Mac/Universal/InstallationManifest.xml',
          checkpoint: '2adcc7a40fa47b7ac33576ffcf44ff529fbd853f49c2e5806f7c34c5cb07b338'
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
