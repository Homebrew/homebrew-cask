cask 'xamarin-studio' do
  version '6.0.1.9-0'
  sha256 'dda412d2172cdb40548d16ae5da2384cb2cc5f69898a461c882c98a60401e5af'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '2cb6260bf1f5348e125fe9cab2effe9862fe76f0706f146dd91c827827cdda6b'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
