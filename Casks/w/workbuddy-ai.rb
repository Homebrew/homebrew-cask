cask "workbuddy-ai" do
  arch arm: "arm64", intel: "x64"

  version "5.6.2.39458645-35219ed6"
  sha256 arm:   "93bcdc424f3602151f73527e168ac6f06043f146eb0a33fab065e12b37b96936",
         intel: "6f8a06cd1c9d738dd82682320b833eceb3a89cb15fa0d50eca9919ea23289499"

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
