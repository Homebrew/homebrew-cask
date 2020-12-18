cask "windocd" do
  version "1.8"
  sha256 :no_check

  url "https://download.moapp.software/windOCD.zip",
      verified: "download.moapp.software/"
  appcast "https://sparkle.moapp.software/windocd.xml"
  name "windOCD"
  homepage "https://windocd.myownapp.com/"

  depends_on macos: ">= :mojave"

  app "windOCD.app"

  zap trash: [
    "~/Library/Application Support/windOCD",
    "~/Library/Caches/com.myownapp.windOCD",
    "~/Library/Preferences/com.myownapp.windOCD.plist",
  ]
end
