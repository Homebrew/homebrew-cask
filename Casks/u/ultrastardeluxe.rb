cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2026.4.0"
  sha256 arm:   "80621128beb8d8c53935349cf91dd94ce33f9a03f253e94b76764736f0857c5e",
         intel: "2159f419da97232ea4f0ec095a096f0bc79c88540dda888f5ca881ee33a0760b"

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
