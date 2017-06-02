cask 'xamarin-ios' do
  version '10.10.0.36'
  sha256 '8631decbf89d24f9751f96ededbaa227ab3d7584d4279c153bc672c7aa5262bd'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fef545d50bd40a08d194b082bba6752cb27453d3381fd4c0504bdf18dd6ab2'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
