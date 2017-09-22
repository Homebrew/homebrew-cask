cask 'xamarin-android' do
  version '7.4.5-1'
  sha256 '0a23f464523d010d7f83c45f200880cb45591e75b1360aa450eabf142b10f651'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd060f69255a71e32aa0b00d74750c04cd5fe27df410929deec0abac8fe2956bb'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
