cask 'xamarin-ios' do
  version '11.9.1.24'
  sha256 '720e2546341d5692169d12ec5cc8e4f83a66a284ebe0da01ccb9c41c6ac11644'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '0ce41f30dfa6fddbe9f848145061b96f9e6293b9e6325b114547946b68eb293f'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
