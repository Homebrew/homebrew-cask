class XamarinAndroid < Cask
  version '4.12.5-2'
  sha256 '4ca0cce28879f7db8cd5117c425212e2fab772ad1dbb3e2fc32ccefbc166e14e'

  url "http://download.xamarin.com/MonoforAndroid/Mac/mono-android-#{version}.pkg"
  # non-Sparkle appcast
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml'
  homepage 'http://xamarin.com/android'
  license :unknown

  pkg "mono-android-#{version}.pkg"
  uninstall :pkgutil => 'com.xamarin.android.pkg'
end
