cask 'xamarin-ios' do
  version '10.2.0.4'
  sha256 '4d5cbed3623e4978298f17ad1837382576ad72972577c3368be4c9fb7ee3de9c'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '00b79aa8567cd5acabbe285e2b09fe0765df2def16a111c8c757015aff57d21e'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
