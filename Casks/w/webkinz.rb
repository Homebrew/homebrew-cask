cask "webkinz" do
  version "1.7.5"
  sha256 "4261f9e83fa058a4c478bdcfb6f7fe7ce0f97831a2085f12659f64c6730db832"

  url "http://downloads.webkinz.com/apps/wxsetup-#{version}.dmg"
  name "Webkinz Classic"
  desc "Virtual pet MMO"
  homepage "https://webkinz.com/"

  livecheck do
    url "http://downloads.webkinz.com/apps/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Webkinz.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ganz.webkinz.sfl*",
    "~/Library/Application Support/Webkinz",
    "~/Library/Logs/Webkinz",
    "~/Library/Preferences/Ganz.Webkinz.plist",
    "~/Library/Saved Application State/Ganz.Webkinz.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
