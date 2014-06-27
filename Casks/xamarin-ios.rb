class XamarinIos < Cask
  version '7.2.1.25'
  sha256 'd95afc2fafd3e773809e18d39f1b830e0df172f39d3f60b0cfa55f4058eb19a2'

  url 'http://download.xamarin.com/MonoTouch/Mac/monotouch-7.2.1.25.pkg'
  homepage 'http://xamarin.com/ios'

  install 'monotouch-7.2.1.25.pkg'
  uninstall :pkgutil => 'com.xamarin.monotouch.pkg'
end
