cask "tuna" do
  version "0.94,2024"
  sha256 "cb0ed5fd733326c3c4c46feca2047f15a92e41c0ba4b62a14ef3d15cc7c62209"

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
