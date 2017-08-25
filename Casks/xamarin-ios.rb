cask 'xamarin-ios' do
  version '10.12.0.20'
  sha256 '4ab04a976635be4499adc8f6bba42ff57ec76d524ee250ae7affe4c955df1efa'

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
