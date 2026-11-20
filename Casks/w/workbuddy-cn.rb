cask "workbuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.11.3.43806934-ecace0f7"
  sha256 arm:   "f3b99997b0aebfe22af4f8c0070b37946b9f839b51cf9510eb6a97c9e45aa639",
         intel: "dd5c63b0bb3960f299ee3a54cf4d4147647c0199a7e5353735ccd7b8bc9a489d"

  url "https://download.codebuddy.cn/workbuddy/saas/darwin-#{arch}/WorkBuddy-darwin-#{arch}-#{version}.dmg"
  name "WorkBuddy"
  desc "AI agent for everyday office work"
  homepage "https://www.workbuddy.cn/"

  livecheck do
    url "https://www.workbuddy.cn/v2/update?platform=workbuddy-darwin-#{arch}"
    regex(/WorkBuddy-darwin-#{arch}-(.+)\.zip$/i)
    strategy :json do |json, regex|
      json["url"]&.[](regex, 1)
    end
  end

  depends_on :macos

  app "WorkBuddy.app"

  uninstall quit: "com.tencent.workbuddy.mac"

  zap trash: [
    "~/.workbuddy",
    "~/Library/Application Scripts/com.tencent.workbuddy.mac.WechatShare",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.workbuddy.mac.sfl*",
    "~/Library/Application Support/com.tencent.workbuddy.mac",
    "~/Library/Application Support/WorkBuddy",
    "~/Library/Caches/com.tencent.workbuddy.mac",
    "~/Library/Containers/com.tencent.workbuddy.mac.WechatShare",
    "~/Library/HTTPStorages/com.tencent.workbuddy.mac",
    "~/Library/Preferences/com.tencent.workbuddy.mac.plist",
    "~/Library/WebKit/com.tencent.workbuddy.mac",
  ]
end
