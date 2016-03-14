cask 'xamarin-studio' do
  version '5.10.3.26-0'
  sha256 'edd4339e029f7dce825d1a6d6506d8fdcb907e9c907ce9de36d82e40bf27e02e'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '14727c4cd976ca3d96a7a9c362bebd064a49c4f24d32296d33767e3a76b4a685'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
