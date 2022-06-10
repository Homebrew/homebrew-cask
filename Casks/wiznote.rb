cask "wiznote" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.81"

  if Hardware::CPU.intel?
    sha256 "156a972c7b86dee5d7d6498e546b5328bac02e9ab9d73e064a2063c0a64e7679"
  else
    sha256 "56b4329ad573c9fd71fa604c7a4e9bf71a2d505e7af3c17fa38e12e9e95bd51b"
  end

  url "https://get.wiz.cn/x/wiznote-desktop-#{version}-mac-#{arch}.dmg"
  name "WizNote"
  desc "Note-taking application"
  homepage "https://www.wiz.cn/"

  livecheck do
    url "https://url.wiz.cn/u/mac64_new"
    strategy :header_match
    regex(/wiznote[._-]desktop[._-]?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}.dmg/i)
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
