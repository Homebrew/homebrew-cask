cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2026.5.0"
  sha256 arm:   "a50e94d5a23388c6843eb3a57ed86e7932c35c19891f2db91426dde5e55a2773",
         intel: "970e9ce8e577e42f20384a12d462da9adae33da37d6958ddc725c447bfce8660"

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
