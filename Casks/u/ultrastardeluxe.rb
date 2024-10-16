cask "ultrastardeluxe" do
  arch arm: "ARM", intel: "x86"

  version "2024.10.0"
  sha256 arm:   "899bdaefb75a659eb52840848a82cdcd086abb8ea205ec0ef782e5ffdcc2d478",
         intel: "ef4a4d2e2b4323db3de67dee5b461bd9bcb6cd6c3194b69aea8ce2c9449b2d0c"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-#{arch}-#{version}.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
