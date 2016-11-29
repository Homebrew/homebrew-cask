cask 'xamarin-studio' do
  version '6.1.2.44'
  sha256 '6963ada70cb621af71fe1cf16990a7cb4d943260e03ddaf60a51b88b5a4aab47'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '48d144620a3f8785b258c63ee2fb7e75a97b40ad3bfb947a74b914440df16422'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
