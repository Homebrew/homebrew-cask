cask 'xamarin-android' do
  version '8.1.0-25'
  sha256 '1b42ea9d6345995ba2f7112ad196ff99c52a346c97218db6dc73e6d12f93253c'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b490f8b59ae7605abcfd4240cd34ca96154192bd506ff3b6c4747d65e7af20ea'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
