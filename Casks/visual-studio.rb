cask 'visual-studio' do
  version '8.3.9.2'
  sha256 '84f29761fcc05a56694aec694c9cb3ba40b9fca2634e06deb9d2397556d9799d'

  # dl.xamarin.com/VsMac was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'https://docs.microsoft.com/en-us/visualstudio/releasenotes/vs2019-mac-relnotes',
          configuration: version.major_minor_patch
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  auto_updates true
  depends_on macos: '>= :sierra'
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
