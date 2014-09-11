class XamarinIos < Cask
  version '7.2.4.4'
  sha256 'd6056e2ab4e529d7a04e9bcca915d780e3d9a76593c14791040b29651f6f2e5d'

  url 'http://download.xamarin.com/MonoTouch/Mac/monotouch-7.2.4.4.pkg'
  # non-Sparkle appcast
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml'
  homepage 'http://xamarin.com/ios'

  pkg 'monotouch-7.2.4.4.pkg'
  uninstall :pkgutil => 'com.xamarin.monotouch.pkg'
end
