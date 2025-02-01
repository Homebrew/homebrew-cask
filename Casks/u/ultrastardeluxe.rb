cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.2.0"
  sha256 arm:   "fe9d83b3783ef8b9886a17cca9a1b52b091ef52cf3ec2d8e732e833d201ae7b0",
         intel: "7162e10b2b27faee5e415d69928f140fe293ccba17d0917041ada2262986fb59"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
