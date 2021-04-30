cask "xamarin-studio" do
  version "6.3.0.864"
  sha256 "213c8aab25014f9656827fa24043a98a7dcf171d48708fe06bb328cead44640c"

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg",
      verified: "dl.xamarin.com/MonoDevelop/Mac/"
  appcast "https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml"
  name "Xamarin Studio"
  homepage "https://www.visualstudio.com/vs/visual-studio-mac/"

  conflicts_with cask: "xamarin"

  app "Xamarin Studio.app"
end
