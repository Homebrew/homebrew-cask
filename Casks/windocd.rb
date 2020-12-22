cask "windocd" do
  version "1.8"
  sha256 :no_check

  url "https://download.moapp.software/windOCD.zip",
      verified: "download.moapp.software/"
  name "windOCD"
  homepage "https://windocd.myownapp.com/"

  livecheck do
    url "https://sparkle.moapp.software/windocd.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "windOCD.app"

  zap trash: [
    "~/Library/Application Support/windOCD",
    "~/Library/Caches/com.myownapp.windOCD",
    "~/Library/Preferences/com.myownapp.windOCD.plist",
  ]
end
