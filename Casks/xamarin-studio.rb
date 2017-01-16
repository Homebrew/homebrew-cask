cask 'xamarin-studio' do
  version '6.1.4.1'
  sha256 '17d0f0cf06c8ff6b2756279c84534d442b6e5c71b25e2441ae113f73182af22b'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'ef02a6e6134070526989d176bdc16871c6e00b5a4e546ce976d93e14a87b63fa'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
