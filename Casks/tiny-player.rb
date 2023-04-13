cask "tiny-player" do
  version "1.6.7"
  sha256 "a52e40e004e7486a889318b33325e0c61b7a3079ec86040870477cd6bf28b4c7"

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  name "Tiny Player for Mac"
  desc "Media player"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Tiny Player.app"

  zap trash: [
    "~/Library/Application Support/Tiny Player",
    "~/Library/Caches/com.catnapgames.playermac",
    "~/Library/Preferences/com.catnapgames.playermac.plist",
  ]
end
