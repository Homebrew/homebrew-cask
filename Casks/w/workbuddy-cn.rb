cask "workbuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.7.6.40409493-306add2a"
  sha256 arm:   "97fa56afe78fa23ddadb829d267389a2e518b461caaf37350a5e27a04dc4f90e",
         intel: "412b9e9221fee1f2e5684cbad0dec21f94999b745c9e8bd265fdb7e0223ab91a"

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
