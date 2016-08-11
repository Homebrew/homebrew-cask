cask 'xamarin-studio' do
  version '6.0.2.73-0'
  sha256 'dea309881a695413abf18e3b56ed58be636aaa4e663525cbf8ecc8dfe1649f3c'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '773227b41218a95c3404b764d09eed828cc248aa4bb3aaabbe75c6ad95022b22'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
