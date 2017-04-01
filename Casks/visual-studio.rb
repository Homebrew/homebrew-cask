cask 'visual-studio' do
  version '2017-01-20-1'
  sha256 '5c33d771e8c43668023d8df2ce31f6977c33b36a38af1c39b68a8b0d2b384a8b'

  # xamarin.azureedge.net was verified as official when first introduced to the cask
  url "https://xamarin.azureedge.net/VsMacInstaller/#{version}/VisualStudioforMacPreviewInstaller.dmg"
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  installer manual: 'Install Visual Studio for Mac Preview.app'

  uninstall delete: '/Applications/Visual Studio.app'

  zap delete: [
                '~/Library/VisualStudio',
                '~/Library/Caches/VisualStudio',
                '~/Library/Logs/VisualStudio',
                '~/Library/Preferences/Visual*Studio',
                '~/Library/Application Support/CrashReporter/VisualStudio*',
              ]
end
