cask "tuna" do
  version "0.72,1405"
  sha256 "f25a8014cfbf0589ad1747d8e1681c0a08f0b7dbad4dec93e6b720b9c1b73ee0"

  url "https://tunaformac.com/download/releases/#{version.csv.second}"
  name "tuna"
  desc "New, modern launcher built upon the original ideas of Quicksilver"
  homepage "https://tunaformac.com/"

  livecheck do
    url "https://tunaformac.com/appcast.xml"
    strategy :sparkle
  end

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
