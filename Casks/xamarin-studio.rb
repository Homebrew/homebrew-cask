cask 'xamarin-studio' do
  version '6.2.0.1821'
  sha256 'c2532647409bb6d60ab4c0b61e7bc1459502d6a1931da3aeb642130ef460383f'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '16d648bbecc3ec71d375dbbd193ee0f7a8116c562fedefa9c050f2fac1b4726d'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
