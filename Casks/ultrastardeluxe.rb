cask "ultrastardeluxe" do
  version "2023.3.0"
  sha256 "124ec65edad0f935a5c4b89ee224049a0e0bf1870c89d11b2e6cf3fac08acb92"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-v#{version}-0.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
