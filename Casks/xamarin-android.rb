cask 'xamarin-android' do
  version '8.0.2-1'
  sha256 '5b1ad2c4c75fde8074e959acff0f9fb521ec713c59add8c76ac07ca9b1a65f7c'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'baafed12ce3818833dbae144410143f428b4719b117fe33ec6634653d3762630'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
