cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.4.0"
  sha256 arm:   "991e4fe2479b730f73f15f400a56dfbd2d7a6fbbd5d6ae32d97d131d761e5983",
         intel: "b35a4108c67c03543c5151574c629cf23921882ca63926c11d02b1c0b1b70836"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
