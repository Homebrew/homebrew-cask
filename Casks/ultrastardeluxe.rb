cask "ultrastardeluxe" do
  version "2023.4.0"
  sha256 "7fde820d3194e1846bd626438294b03ae8ba5482c15ff949db20d859484ee692"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStar.Deluxe_v#{version}.stable.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
