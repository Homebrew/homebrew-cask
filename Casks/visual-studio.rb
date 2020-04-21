cask 'visual-studio' do
  version '8.5.3.16'
  sha256 '497c46f015fbe6e67d4cf88ffd221b801f2bbf2421f077f47c6f76467d331baf'

  # dl.xamarin.com/VsMac/ was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast 'https://docs.microsoft.com/en-us/visualstudio/releasenotes/vs2019-mac-relnotes',
          configuration: version.major_minor_patch
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  auto_updates true
  depends_on macos: '>= :sierra'
  depends_on cask: 'homebrew/cask-versions/mono-mdk-for-visual-studio'

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
