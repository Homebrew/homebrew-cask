cask :v1 => 'xamarin-ios' do
  version '8.10.3.2'
  sha256 'fd3b51050ae6992a8209e6f31893673c9a7d90445529d0af7b766158ce3912c2'

  url "https://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  name 'Xamarin.iOS'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/ios'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "monotouch-#{version}.pkg"

  uninstall :pkgutil => 'com.xamarin.monotouch.pkg'
end
