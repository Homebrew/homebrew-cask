cask 'xamarin-studio' do
  version '6.1.1.15-0'
  sha256 '39dbe44a4de8bcff8a409473629ca785284c307e95ab62cc3b341c63d451afd1'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '00b79aa8567cd5acabbe285e2b09fe0765df2def16a111c8c757015aff57d21e'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
