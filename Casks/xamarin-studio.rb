cask 'xamarin-studio' do
  version '6.2.0.1829'
  sha256 'ab7558419af831e5b56023edfef5ae110b44c91a99b8ff595c3a7867592700f7'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fff1d7a6a76fad3c5bddf85eac1be682963000aff8a1c355284dd7361fd02d'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
