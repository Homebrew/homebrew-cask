cask 'visual-studio' do
  version '8.3.7.1'
  sha256 '3cf438a970507d8da09d3d433c9a527b88b1036b679a278e2432656c394c4f12'

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
