cask :v1 => 'xamarin-ios' do
  version '8.2.0.193'
  sha256 '6fd3ffd73937d937e0dac4bfdc6534fc948ceebf38d02b3eee94cd857fba4ee8'

  url "http://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '713f272a1e36262f1b2c5a06f4ed1b1eb8987d240018347a51312dfedeeafcf3',
          :format => :unknown
  homepage 'http://xamarin.com/ios'
  license :unknown

  pkg "monotouch-#{version}.pkg"

  uninstall :pkgutil => 'com.xamarin.monotouch.pkg'
end
