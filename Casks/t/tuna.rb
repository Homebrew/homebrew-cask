cask "tuna" do
  version "0.105,2235"
  sha256 "5e1ed4e7ed078a2665d74866ce552e051471d5a5bf8426ead438a2a502badd48"

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
