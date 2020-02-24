cask 'xamarin-studio' do
  version '6.3.0.864'
  sha256 '213c8aab25014f9656827fa24043a98a7dcf171d48708fe06bb328cead44640c'

  # dl.xamarin.com/MonoDevelop/Mac was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin Studio'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  conflicts_with cask: 'xamarin'

  app 'Xamarin Studio.app'
end
