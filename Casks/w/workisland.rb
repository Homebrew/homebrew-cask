cask "workisland" do
  version "1.3.0"
  sha256 "49e501a22a31c63087fde65c2e9543485a4b81493a7bb12e77e4ae2ebcacbf9e"

  url "https://github.com/qianzhu18/workisland/releases/download/v#{version}/WorkIsland-#{version}-arm64.dmg"
  name "WorkIsland"
  desc "Monitor and approve AI coding agent tasks"
  homepage "https://github.com/qianzhu18/workisland"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "WorkIsland.app"

  zap trash: [
    "~/Library/Application Support/WorkIsland",
    "~/Library/Caches/app.workisland.desktop",
    "~/Library/HTTPStorages/app.workisland.desktop",
    "~/Library/Preferences/app.workisland.desktop.plist",
    "~/Library/Saved Application State/app.workisland.desktop.savedState",
  ]
end
