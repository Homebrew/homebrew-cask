cask 'xamarin-ios' do
  version '11.8.1.28'
  sha256 '1233043cf065096cc32d82c3ac41a564b961f32ac6038ba1817b42d0be7c3ab5'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b86124b8760fa01636931c40f473476e40d303d4d9a321422973becbea1efc33'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
