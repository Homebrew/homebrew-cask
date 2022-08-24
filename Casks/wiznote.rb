cask "wiznote" do
  arch arm: "arm64", intel: "x64"

  version "0.1.84"
  sha256 arm:   "30bb2e59f779393d5025993c3399ddd81ff7d877953ab922ec988858543e1e12",
         intel: "1e9e867d6d49ba5b482d47e3ad9d610d9630ab2501626de65364141adb758dc7"

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
