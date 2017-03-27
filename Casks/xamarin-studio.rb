cask 'xamarin-studio' do
  version '6.2.0.1829'
  sha256 'ab7558419af831e5b56023edfef5ae110b44c91a99b8ff595c3a7867592700f7'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '1c931d41a49d507e4519cc22d207a8e96601f9ae17d8497fb05f0183ba0ef26c'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
