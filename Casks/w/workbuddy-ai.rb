cask "workbuddy-ai" do
  arch arm: "arm64", intel: "x64"

  version "5.5.2.37849279-910352f0"
  sha256 arm:   "9ea440d1462297c652312efc91aba463ce7e60cc2a211380b0d38ca71fb333e7",
         intel: "722065401d9e8fc0b49147662198e132f62e18df0ce03baee23336caf1687006"

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

  depends_on macos: :big_sur

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
