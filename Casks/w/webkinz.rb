cask "webkinz" do
  version "1.7.7"
  sha256 "c0611b8e48b2fea1d73e10f9a6c05bbf172a7d1f4ff2cf6fd3f63351f55f0411"

  url "https://downloads.webkinz.com/apps/wxsetup-#{version}.dmg"
  name "Webkinz Classic"
  desc "Virtual pet MMO"
  homepage "https://webkinz.com/"

  livecheck do
    url "https://downloads.webkinz.com/apps/latest-mac.yml"
    strategy :electron_builder
  end

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
