cask 'xamarin-studio' do
  version '6.3.0.863'
  sha256 'a32f19a6ec4e1ebffae05a7f7c4024f22d1e477d4894bb25ae3ca53bfaa3070d'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '4e35d027d98e8b3492711f22401b344615d6f1478b66c833055cccfd00681fbb'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/studio'

  app 'Xamarin Studio.app'
end
