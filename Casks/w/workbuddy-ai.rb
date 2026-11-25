cask "workbuddy-ai" do
  arch arm: "arm64", intel: "x64"

  version "5.11.7.44923190-525fde10"
  sha256 arm:   "d7d13b8d3c43403dbbafde5f8d6364f3fc58d573fce56cc3384cc257f47f746a",
         intel: "1f23b5217cf410fcd49cf9542a2ee147bcef9a5d2adf955ea305c7589329bdb3"

  url "https://codebuddy-1328495429.cos.accelerate.myqcloud.com/workbuddy/saas/darwin-#{arch}/WorkBuddy-darwin-#{arch}-#{version}.dmg"
  name "WorkBuddy AI"
  desc "AI agent for everyday office work"
  homepage "https://www.workbuddy.ai/"

  livecheck do
    url "https://www.workbuddy.ai/v2/update?platform=workbuddy-darwin-#{arch}"
    regex(/WorkBuddy-darwin-#{arch}-(.+)\.zip$/i)
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
