cask 'xamarin-studio' do
  version '5.10.3.27-0'
  sha256 'bd8d37eda0797575e2f6206d430271cdd3025d206fe084d1d8526ec5b289bb8a'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '7fd7fddb12ef8962a108073eaf8d0751fc200266439aae050ac318d7c242c940'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
