cask "workbuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.7.7.40774747-2e8619da"
  sha256 arm:   "23a9f54d0c4ed54e250fbac6cbb00e6ecab2adb39642de9729379af1e1464075",
         intel: "274959cdb2fdc66f439ec7d4b32fb2cb8fbb6eaeeb349ec5ae8b872b3cc17914"

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
