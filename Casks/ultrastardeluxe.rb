cask "ultrastardeluxe" do
  version "2020.4.0"
  sha256 "21c46ed7cc77fd4678b395fc9cc346c572cc5798df8479392968cb684ca2b5d9"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStar.Deluxe-v#{version}.stable_macOS.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"
end
