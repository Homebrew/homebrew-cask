cask 'xamarin-ios' do
  version '11.0.0.0'
  sha256 '34e0b5eec4dcc49022aef59ebda5d1e5e7af0013b9b13655c66f0a176f0b8f3f'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd060f69255a71e32aa0b00d74750c04cd5fe27df410929deec0abac8fe2956bb'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
