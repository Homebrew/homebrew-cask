cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.3.0"
  sha256 arm:   "de9ef51ceaabe5f56c7a5aa356d31d1dd5b4fa9385e71202cda5b11b539ffcd5",
         intel: "0da90d96bb20145408c04400aa7ef71a3a5e471305505032532b2c83b1408683"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
