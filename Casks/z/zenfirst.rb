cask "zenfirst" do
  version "0.1.11"
  sha256 "34a93330fd02899effcb1ee04c7d0ca99faff5d2d40518cf62d02e28aebe803a"

  url "https://github.com/takatakayone/zen_first-releases/releases/download/v#{version}/ZenFirst_#{version}_universal.dmg"
  name "ZenFirst"
  desc "Lock your screen until your routine is complete"
  homepage "https://zen-first.com"

  app "ZenFirst.app"

  zap trash: [
    "~/Library/Application Support/com.zenfirst.app",
    "~/Library/Caches/com.zenfirst.app",
    "~/Library/Preferences/com.zenfirst.app.plist",
  ]
end
