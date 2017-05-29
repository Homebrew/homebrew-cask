cask 'xamarin-android' do
  version '7.3.1-2'
  sha256 'dd57b13b38323fed00c385c47aaa8adbffb2a60ff1fa0a96d13421e1376857ea'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fef545d50bd40a08d194b082bba6752cb27453d3381fd4c0504bdf18dd6ab2'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
