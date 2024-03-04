cask "ultrastardeluxe" do
  version "2024.3.0"
  sha256 "73a2ca351bbdf74192d961fc517be9e2f2b1c3e0ba8f84d45bd980e5253ba0ff"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-v#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
