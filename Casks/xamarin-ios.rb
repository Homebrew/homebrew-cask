class XamarinIos < Cask
  version '8.2.0.193'
  sha256 '6fd3ffd73937d937e0dac4bfdc6534fc948ceebf38d02b3eee94cd857fba4ee8'

  url "http://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  # non-Sparkle appcast
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml'
  homepage 'http://xamarin.com/ios'
  license :unknown

  pkg "monotouch-#{version}.pkg"
  uninstall :pkgutil => 'com.xamarin.monotouch.pkg'
end
