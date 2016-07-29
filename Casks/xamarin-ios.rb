cask 'xamarin-ios' do
  version '9.8.1.4'
  sha256 '492bcc12ca2e5677bdd84eda98bcbd5132bee9d8d74bb10705f0e001f7cc1720'

  url "https://download.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '2cb6260bf1f5348e125fe9cab2effe9862fe76f0706f146dd91c827827cdda6b'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
