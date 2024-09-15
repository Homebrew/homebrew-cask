cask "universal-desktop@beta" do
  version "1.1,65"
  sha256 "fec78328bfd7afd613d636dd1d60b4ba75a745080a814f16c45c15dbb4c4ec9f"

  url "https://github.com/adrianjagielak/universal-desktop-website/releases/download/v#{version.csv.first}-#{version.csv.second}/Universal.Desktop.dmg",
      verified: "github.com/adrianjagielak/universal-desktop-website/"
  name "Universal Desktop (Beta)"
  desc "Stream apps to Vision Pro as native visionOS windows"
  homepage "https://universaldesktop.app/"

  livecheck do
    url "https://www.universaldesktop.app/macos_host_beta_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "universal-desktop"
  depends_on macos: ">= :monterey"

  app "Universal Desktop.app"

  zap trash: [
    "~/Library/HTTPStorages/dev.adrianjagielak.UniversalDesktop",
    "~/Library/Preferences/dev.adrianjagielak.UniversalDesktop.plist",
  ]
end
