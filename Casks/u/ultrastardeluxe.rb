cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.12.0"
  sha256 arm:   "c4b1fd1913e021e5a026ac49d9303f3e19cf92a556ec0412d2d43beb0371b9c8",
         intel: "4e7e0156af6ad2f13229d04af40b5754300709ef1188f3971532d2669ac87439"

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
