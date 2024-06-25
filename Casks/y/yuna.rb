cask "yuna" do
  version "1.4.23"
  sha256 "9a159f8cd2e16cc4dd31cb3a0f4c30fee20f29cfc77514ac27099561b0893fbd"

  url "https://github.com/BeeeQueue/yuna/releases/download/v#{version}/Yuna-#{version}.dmg",
      verified: "github.com/BeeeQueue/yuna/"
  name "Yuna"
  desc "Anime player and list manager"
  homepage "https://yuna.moe/"

  disable! date: "2024-06-24", because: :no_longer_available

  app "Yuna.app"

  zap trash: "~/Library/Application Support/yuna"
end
