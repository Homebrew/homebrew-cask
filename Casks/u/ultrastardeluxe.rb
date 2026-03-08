cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2026.2.0"
  sha256 arm:   "754b9ce097b0a13c069fef1c70662a39454d83533ed8ba211add645e72b2ff50",
         intel: "337eb585079c43b9fc644ca75bdb92241e4a7347428b0c73d1d6554837bdc2cd"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
