cask 'xamarin-studio' do
  version '6.3.0.863'
  sha256 'a32f19a6ec4e1ebffae05a7f7c4024f22d1e477d4894bb25ae3ca53bfaa3070d'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '45f2c1416f8321cfd68ffc388ecedae744d12cf4345bbb9bac1e36dca3ce6214'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/visual-studio-for-mac'

  app 'Xamarin Studio.app'
end
