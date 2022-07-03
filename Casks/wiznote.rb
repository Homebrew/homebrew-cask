cask "wiznote" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.1.83"

  if Hardware::CPU.intel?
    sha256 "3a94e649cdfa05f36306591204c091f7efdf7f209337a0464219ad02823b20aa"
  else
    sha256 "2afd42ff3cc996f0d9122cd8aac1e590d5b53d7eb90d6f17221311bbfb7dd48d"
  end

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
