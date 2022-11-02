cask "wiznote" do
  arch arm: "arm64", intel: "x64"

  version "0.1.89"
  sha256 arm:   "092f96ee837e1a633301f6fa45768d91a59e1bac448225d9218695569ebb710d",
         intel: "96e1c853ae5c89de252db6ef7629af31a89a1f0b6cb81d626bbadc8de4652265"

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
