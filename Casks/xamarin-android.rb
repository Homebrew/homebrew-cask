cask 'xamarin-android' do
  version '7.3.1-1'
  sha256 '4e2b76eb4a830d718b0ab292aa747d100bc2ba834af58b779afe655a027d8bcb'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '45f2c1416f8321cfd68ffc388ecedae744d12cf4345bbb9bac1e36dca3ce6214'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
