cask "wiznote" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.67"

  if Hardware::CPU.intel?
    sha256 "2aa02bc6cd0d508ce2857d3b2d60693b592a5ea64d1cba146fc723f0a0e85da4"
  else
    sha256 "b313e10bfd8b0b125b932cfcc2328b7720535ab027894ec4e4612e7dab6e5ceb"
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
