cask "ultrastardeluxe" do
  version "2023.5.0"
  sha256 "7f646ca8db28be8d4c938ef7d8a934b6c1e276db09855caa2c8ee2b2be84455b"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe_v#{version}-0.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
