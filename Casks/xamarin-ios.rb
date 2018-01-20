cask 'xamarin-ios' do
  version '11.6.1.2'
  sha256 '7591e0b31c92378da64aeac70c41cb80e6463aa9c254dd879dcb840eb80b72e2'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'e284e4a3896fdaf3f82418604be97cdf49c31010de349283031171388d3a6a21'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
