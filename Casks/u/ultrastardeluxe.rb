cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.8.0"
  sha256 arm:   "26c72ce6e1aed9c1e0be10832eeed60b54428ebe3a0edf76e20b1a1625d22a87",
         intel: "72c16a49045113c20cab9e6847240babeb81ffe7e80244f091d5bd82ec0548af"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
