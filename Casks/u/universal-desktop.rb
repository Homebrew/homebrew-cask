cask "universal-desktop" do
  version "1.0.8"
  sha256 "5502501767cb445237f57da2a68604897b0d53c91530b28bcf9895ee1cb73af9"

  url "https://github.com/adrianjagielak/universal-desktop-website/releases/download/v#{version}/Universal.Desktop.dmg",
      verified: "github.com/adrianjagielak/universal-desktop-website/"
  name "Universal Desktop"
  desc "Stream Mac apps to Apple Vision Pro as native visionOS windows"
  homepage "https://universaldesktop.app/"

  livecheck do
    url "https://www.universaldesktop.app/macos_host_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Universal Desktop.app"

  zap trash: [
    "~/Library/Preferences/dev.adrianjagielak.UniversalDesktop.plist",
    "~/Library/HTTPStorages/dev.adrianjagielak.UniversalDesktop",
  ]
end
