cask "tuna" do
  version "0.99,2147"
  sha256 "503d06b1e400b8e3d6d6f0e256b4b62758b8005f850d8ad2d1df0419044c8cb8"

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
