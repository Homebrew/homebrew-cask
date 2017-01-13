cask 'xamarin-ios' do
  version '10.3.1.8'
  sha256 '04a118218bd1d02650100a4123bceb2346d142262384c6d2172e074c0db8b398'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'ef02a6e6134070526989d176bdc16871c6e00b5a4e546ce976d93e14a87b63fa'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
