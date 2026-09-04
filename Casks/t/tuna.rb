cask "tuna" do
  version "0.96,2096"
  sha256 "3123f29b58343df674ffcc4c6148326887e3fecfb8495555d67e73f78197fb55"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"
  name "Tuna"
  desc "Application launcher"
  homepage "https://tunaformac.com/"

  livecheck do
    url "https://tunaformac.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Tuna.app"

  uninstall quit: "com.brnbw.Tuna"

  zap trash: [
    "~/Library/Application Support/Tuna",
    "~/Library/Caches/com.brnbw.Tuna",
    "~/Library/Caches/Tuna",
    "~/Library/HTTPStorages/com.brnbw.Tuna",
    "~/Library/HTTPStorages/com.brnbw.Tuna.binarycookies",
    "~/Library/Preferences/com.brnbw.Tuna.plist",
  ]
end
