cask :v1 => 'xamarin-studio' do
  version '5.10.0.871-0'
  sha256 '21514c0c941b285fd4cef7efc579b51d48578ca22aa10c94e73cc32c3c7f1863'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  name 'Xamarin Studio'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
