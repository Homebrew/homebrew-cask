cask :v1 => 'xamarin-studio' do
  version '5.7.0.660-0'
  sha256 'efb4b5817ff1e21d9aaac13c76607ee198d3dc71b57968faf075f01a7069133c'

  url "http://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'http://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
