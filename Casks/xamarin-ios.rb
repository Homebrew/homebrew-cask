cask 'xamarin-ios' do
  version '11.2.0.8'
  sha256 '855c079d80ee312fbda4c4ff82fe9bfc00146f4b7a0d164f051f41c6734d0310'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '796e78c229d3accc035db4eb28032362cd75666b907f0b8eb8169b00c883dd41'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
