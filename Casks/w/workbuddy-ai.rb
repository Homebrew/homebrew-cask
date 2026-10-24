cask "workbuddy-ai" do
  arch arm: "arm64", intel: "x64"

  version "5.8.4.41366630-73952edb"
  sha256 arm:   "e5ef3f91e7f9d61a3d41eb9e279f1bc676e4317afdb211fee94efc03548f1133",
         intel: "8404d7eeb2653ec49ca3f3bce4b69fd101ecf60bd1fd9f8472181108a11aa63e"

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
