cask 'xamarin-ios' do
  version '11.2.0.11'
  sha256 'de18878b280fb7a9c9c8f0e3279f2781d128ea0899ea46db4b09b469e0041bde'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '6c0206cd7b4e66ca36952c28faba171fee84cb5af10ef6e6701b59e97745a88a'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
