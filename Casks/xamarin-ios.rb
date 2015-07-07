cask :v1 => 'xamarin-ios' do
  version '8.6.0.51'
  sha256 'af65207d86529fff3ede3e6bc1d394fe7bc1abca67cc502e05c3d725710125c6'

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
