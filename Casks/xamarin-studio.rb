cask 'xamarin-studio' do
  version '6.1.3.19'
  sha256 '10cadc17d22c3e7bb7125fc4a3124d590df7c790f203a287eb4a7c6322312dae'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '48d144620a3f8785b258c63ee2fb7e75a97b40ad3bfb947a74b914440df16422'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
