cask 'xamarin-studio' do
  version '6.1.1.17'
  sha256 'de9747c341e87521bd310cffaf784d8b9cf8b111b48899fc0dc49121e3036836'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '00b79aa8567cd5acabbe285e2b09fe0765df2def16a111c8c757015aff57d21e'
  name 'Xamarin Studio'
  homepage 'https://xamarin.com/studio'

  app 'Xamarin Studio.app'
end
