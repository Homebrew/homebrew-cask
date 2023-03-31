cask "wiznote" do
  arch arm: "arm64", intel: "x64"

  version "0.1.100"
  sha256 arm:   "b2b52cb925e457911dd232c90e471aad4cf521a815b585dd06d3f0d9a1f456d9",
         intel: "320425fccb73daaec1488bf3afe13b2edbc0a740add067cf891168f06f82c5d7"

  url "https://get.wiz.cn/x/wiznote-desktop-#{version}-mac-#{arch}.dmg"
  name "WizNote"
  desc "Note-taking application"
  homepage "https://www.wiz.cn/"

  livecheck do
    url "https://url.wiz.cn/u/mac64_new"
    regex(/wiznote[._-]desktop[._-]?(\d+(?:\.\d+)+).*?\.dmg/i)
    strategy :header_match
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
