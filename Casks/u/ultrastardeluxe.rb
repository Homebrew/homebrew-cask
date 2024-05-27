cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2024.5.1"
  sha256 arm:   "55346db7aa2f44fb6be4558603e8828770025999c76cd8f86982e6d1c4135de6",
         intel: "f6411f12bf680f57753e1e67f5d1f34a21733b2dc8c395e3ae6441f5ce204b78"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
