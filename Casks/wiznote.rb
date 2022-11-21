cask "wiznote" do
  arch arm: "arm64", intel: "x64"

  version "0.1.90"
  sha256 arm:   "bf49bba5a0d3a4d6b7093423c6a44c36b443651e3a3cd7d48deaceba2ebe44c7",
         intel: "b3a0a1bfb022b6344f1e72f92da77954c7ebc19036241f1bc9ec4de588ab3dc8"

  url "https://get.wiz.cn/x/wiznote-desktop-#{version}-mac-#{arch}.dmg"
  name "WizNote"
  desc "Note-taking application"
  homepage "https://www.wiz.cn/"

  livecheck do
    url "https://url.wiz.cn/u/mac64_new"
    strategy :header_match
    regex(/wiznote[._-]desktop[._-]?(\d+(?:\.\d+)+).*?\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "WizNote.app"

  zap trash: [
    "~/Library/Application Support/Caches/wiznote-desktop-updater",
    "~/Library/Application Support/WizNote",
    "~/Library/Caches/cn.wiznote.desktop",
    "~/Library/Caches/cn.wiznote.desktop.ShipIt",
    "~/Library/Logs/WizNote",
    "~/Library/Preferences/ByHost/cn.wiznote.desktop.ShipIt.*.plist",
    "~/Library/Preferences/cn.wiznote.desktop.plist",
    "~/Library/Saved Application State/cn.wiznote.desktop.savedState",
  ]
end
