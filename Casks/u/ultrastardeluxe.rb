cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.10.0"
  sha256 arm:   "d0e28dcae87c2600b38c087478b3b34c5e84a67e1d3c73662fb62a1caca26716",
         intel: "556f4ce5b0f92fbad0d7ef165f9cc9a8192630702503ce36c6a7aabf50788c97"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
