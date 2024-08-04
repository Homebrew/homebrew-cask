cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2024.8.0"
  sha256 arm:   "f656ae4cb91efa970a20f78026f105355241ae240a29bc7fcad6fef854d591d8",
         intel: "e5c4942c938673118f0d02b663ce80d2645e0ab3b62165ecdad8fc16374080dc"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
