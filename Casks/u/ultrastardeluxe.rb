cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2026.8.1"
  sha256 arm:   "b69cfe311d4ee6004db6d81596812817767b8ef59d5715f9ba08c6012a0bfb16",
         intel: "03d488e988b325cbd4ce16a210d46144372fee463fcb92854c015829b0d7de74"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "UltraStarDeluxe.app"

  uninstall quit: "org.ultrastardeluxe.ultrastardeluxe"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
