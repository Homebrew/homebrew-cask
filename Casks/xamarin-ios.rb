cask 'xamarin-ios' do
  version '10.10.0.33'
  sha256 'ab1bc28c438375c6c491f5519acd06881a4e708a8753cab637199d93cd66f603'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '45f2c1416f8321cfd68ffc388ecedae744d12cf4345bbb9bac1e36dca3ce6214'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
