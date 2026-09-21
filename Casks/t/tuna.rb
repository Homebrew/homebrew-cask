cask "tuna" do
  version "0.100,2150"
  sha256 "04eeb44d8267d894ba31ec170a4ea7c99690d45ca0c576511008ab183de8d4d4"

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
