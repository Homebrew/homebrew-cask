cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.12.1"
  sha256 arm:   "399f37040f06a4d466f4359fcb685e7f89eb4359b25fdac9da48921154c561cf",
         intel: "2dfd7eddb6ea6f5069aeaed90602e0311c446724a31861b3b6878b7743910f49"

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
