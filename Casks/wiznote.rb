cask "wiznote" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.66"

  if Hardware::CPU.intel?
    sha256 "2616f22d08cf8ecaedd8b0133de51bd60b2ad9d9e81d38594a9e99143af504f8"
  else
    sha256 "c64c544274fc13c032e1f5e030e7176b2ed7eaedb4f4899eef83109cf2181975"
  end

  url "https://wizteam-generic.pkg.coding.net/client/wiznote-autoupdate/wiznote-desktop-#{version}-mac-#{arch}.dmg",
      verified: "wizteam-generic.pkg.coding.net/client/wiznote-autoupdate/"
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
