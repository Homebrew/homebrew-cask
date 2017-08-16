cask 'xamarin-ios' do
  version '10.12.0.18'
  sha256 'a09a1878776e29fccc83f13581ca4b881230f38282686833de6489fef544f781'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '21f7412cc871cceda8f7caf320f994a15cf1ee2f57865518ff9ed027bb76d604'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
