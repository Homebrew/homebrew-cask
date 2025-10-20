cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2025.10.1"
  sha256 arm:   "e82c61b294c67acb6fab5874ca94c274f83e68d088722830eb7c8cf20e889598",
         intel: "724a467466ccc21778ae16070783a05751cfa15d80d96bb8e3ac27f99f355933"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-mac-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
