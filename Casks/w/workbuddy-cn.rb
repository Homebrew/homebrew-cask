cask "workbuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.6.2.39298511-37a65c0b"
  sha256 arm:   "251d3e56a940a6061752534e5466e7dab332d4ee06148824a569a739892e1c21",
         intel: "0bee8b10407eebbfff3e1a177bfc790f6c95f6cd66bceb5676fd13a709b5715b"

  url "https://download.codebuddy.cn/workbuddy/saas/darwin-#{arch}/WorkBuddy-darwin-#{arch}-#{version}.dmg"
  name "WorkBuddy"
  desc "AI agent for everyday office work"
  homepage "https://www.workbuddy.cn/"

  livecheck do
    url "https://www.workbuddy.cn/v2/update?platform=workbuddy-darwin-#{arch}"
    regex(/WorkBuddy-darwin-#{arch}-(.+)\.zip$/)
    strategy :json do |json, regex|
      json["url"]&.[](regex, 1)
    end
  end

  depends_on :macos

  app "WorkBuddy.app"

  uninstall quit: "com.tencent.workbuddy.mac"

  zap trash: [
    "~/.workbuddy",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.workbuddy.mac.sfl*",
    "~/Library/Application Support/com.tencent.workbuddy.mac",
    "~/Library/Application Support/WorkBuddy",
    "~/Library/Caches/com.tencent.workbuddy.mac",
    "~/Library/HTTPStorages/com.tencent.workbuddy.mac",
    "~/Library/Preferences/com.tencent.workbuddy.mac.plist",
    "~/Library/WebKit/com.tencent.workbuddy.mac",
  ]
end
