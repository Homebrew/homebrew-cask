cask 'xamarin-ios' do
  version '10.10.0.36'
  sha256 '8631decbf89d24f9751f96ededbaa227ab3d7584d4279c153bc672c7aa5262bd'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd1c454ead2e12eb823776ab1e0f18c35cb9372379ac93aacff7107c0c76b8c0b'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
