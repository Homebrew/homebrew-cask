cask "xamarin-studio" do
  version "6.3.0.864"
  sha256 "213c8aab25014f9656827fa24043a98a7dcf171d48708fe06bb328cead44640c"

  url "https://dl.xamarin.com/MonoDevelop/Mac/XamarinStudio-#{version}.dmg",
      verified: "dl.xamarin.com/MonoDevelop/Mac/"
  name "Xamarin Studio"
  desc "IDE for mobile app development"
  homepage "https://www.visualstudio.com/vs/visual-studio-mac/"

  disable! date: "2024-12-16", because: :discontinued

  conflicts_with cask: "xamarin"

  app "Xamarin Studio.app"
end
