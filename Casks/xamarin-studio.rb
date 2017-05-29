cask 'xamarin-studio' do
  version '6.3.0.864'
  sha256 '213c8aab25014f9656827fa24043a98a7dcf171d48708fe06bb328cead44640c'

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd1c454ead2e12eb823776ab1e0f18c35cb9372379ac93aacff7107c0c76b8c0b'
  name 'Xamarin Studio'
  homepage 'https://www.xamarin.com/visual-studio-for-mac'

  app 'Xamarin Studio.app'
end
