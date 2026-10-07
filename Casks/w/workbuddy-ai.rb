cask "workbuddy-ai" do
  arch arm: "arm64", intel: "x64"

  version "5.7.6.40488862-3e43260f"
  sha256 arm:   "d7c7651c8113f98934f8db9ae67f0832b3bf2da22bab398d495a249c78142823",
         intel: "6fae926eec6d82d187541f236527f6dc6a99d0c2e823dcb060ba4503a162875a"

  url "https://codebuddy-1328495429.cos.accelerate.myqcloud.com/workbuddy/saas/darwin-#{arch}/WorkBuddy-darwin-#{arch}-#{version}.dmg"
  name "WorkBuddy AI"
  desc "AI agent for everyday office work"
  homepage "https://www.workbuddy.ai/"

  livecheck do
    url "https://www.workbuddy.ai/v2/update?platform=workbuddy-darwin-#{arch}"
    regex(/WorkBuddy-darwin-#{arch}-(.+)\.zip$/)
    strategy :json do |json, regex|
      json["url"]&.[](regex, 1)
    end
  end

  depends_on :macos

  app "WorkBuddy AI.app"

  uninstall quit: "com.workbuddy.workbuddy-ai"

  zap trash: [
    "~/.workbuddy-ai",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.workbuddy.workbuddy-ai.sfl*",
    "~/Library/Application Support/WorkBuddy AI",
    "~/Library/Caches/com.workbuddy.workbuddy-ai",
    "~/Library/HTTPStorages/com.workbuddy.workbuddy-ai",
    "~/Library/Preferences/com.workbuddy.workbuddy-ai.plist",
    "~/Library/WebKit/com.workbuddy.workbuddy-ai",
  ]
end
