cask 'xamarin-ios' do
  version '11.2.0.11'
  sha256 'de18878b280fb7a9c9c8f0e3279f2781d128ea0899ea46db4b09b469e0041bde'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'ae14679a7064f0aba35c3117a65dd47a8c61e8ed560c7b166ac514fb45195e67'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
