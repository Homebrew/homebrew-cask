cask "workbuddy-cn" do
  arch arm: "arm64", intel: "x64"

  version "5.9.3.42398134-d4692421"
  sha256 arm:   "694046f11eb1de1adf2bca4f096e8950f871014766aa1894d2eda94e7519afba",
         intel: "d1bf711f90f7864385e9b568a73d8b1418d6cfd2af91c32a9f53e87c37b93b41"

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
