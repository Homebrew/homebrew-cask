class XamarinStudio < Cask
  version '5.4.0.240-0'
  sha256 'bd5a3d28889a776190836c7cf3c19bbf749a01f2a45f74a118a535967ca3cc8a'

  url "http://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  # non-Sparkle appcast
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml'
  homepage 'http://xamarin.com/studio'
  license :unknown

  app 'Xamarin Studio.app'
end
