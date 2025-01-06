cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.1.0"
  sha256 arm:   "ef67b839ce6773e6a61135b916a1e321151036a4738f836a046e4fc640e0845f",
         intel: "849fad67b8747fb09f0c31e3a9c6145ef64d35095ee1961d54f144dcdae6fe57"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
