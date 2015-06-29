cask :v1 => 'xamarin-studio' do
  version '5.7.0.661-0'
  sha256 '6a126005fafaa19cd8a9c6153c2a7c4b502cf8293e8c977bfbac38f03e0f2e2e'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  name 'Xamarin Studio'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
