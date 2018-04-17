cask 'xamarin-android' do
  version '8.2.0-16'
  sha256 '4171d93c81f1c3b3e59868e3f81a4b9a3f672209926623fdbbaa37429769a93e'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b86124b8760fa01636931c40f473476e40d303d4d9a321422973becbea1efc33'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
