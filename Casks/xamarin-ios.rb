cask 'xamarin-ios' do
  version '11.2.1.0'
  sha256 '8a36eac06da2b27c7c5293cc79334e5298c2fa7ff5197e010aea8a8df405b4d4'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'baafed12ce3818833dbae144410143f428b4719b117fe33ec6634653d3762630'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
