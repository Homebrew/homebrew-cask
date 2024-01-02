cask "ultrastardeluxe" do
  version "2024.1.0"
  sha256 "dfa1d535d0b19850e8d4ae0130881c99c9684da4b950cb3bdfbbc885bf021ae4"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-v#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
