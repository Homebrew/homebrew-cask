cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2026.3.0"
  sha256 arm:   "2af504bc95dd88fccd712a854ca0bbbc0f0bf2b0d929b05cbc5b8e5f3a806d67",
         intel: "bdd5059a6bb1b36557901e20b2c67a2b62268c321614243b54f0d6199936dbda"

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
