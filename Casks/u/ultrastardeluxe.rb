cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.9.0"
  sha256 arm:   "cd600f1c3f8193b78ae2f33735ee6146a9eb66a67c73fea204507220f9b7856b",
         intel: "fb8cf88eff5084c0492b81ec33c7134e1d04912530c61b72815877c946a943be"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
