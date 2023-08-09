cask "ultrastardeluxe" do
  version "2023.6.0"
  sha256 "a0d47271ae836fd2fccf6962ca127e1ad0313a6ea3f455ad336510e13a85ded0"

  url "https://github.com/UltraStar-Deluxe/USDX/releases/download/v#{version}/UltraStarDeluxe-v#{version}-0.dmg",
      verified: "github.com/UltraStar-Deluxe/USDX/"
  name "UltraStar Deluxe"
  desc "Karaoke game"
  homepage "https://usdx.eu/"

  app "UltraStarDeluxe.app"

  zap trash: "~/Library/Application Support/UltraStarDeluxe1.3"
end
