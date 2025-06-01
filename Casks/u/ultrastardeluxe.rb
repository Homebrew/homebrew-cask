cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.6.0"
  sha256 arm:   "7a36e521f88d796e1d1c77b906f26ec33100b19fd21c3354133ff765ca6031b9",
         intel: "c9ce464faeda06e089f520e57b3c78ff28d993180ca4ca4c3e060b2c8f83dfd3"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
