cask "wispr-flow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1583"
  sha256 arm:   "841194c38a3502b04a82eed1dab53f2df456dd972dea6f4821e6a12903fb6452",
         intel: "8bef5c87875dae32ef6849ff1eee26da83bcb16f52dc8eadc6464ae5d68ec5e6"

  url "https://dl.wisprflow.com/wispr-flow/darwin/#{arch}/dmgs/Flow-v#{version}.dmg"
  name "Wispr Flow"
  desc "Voice-to-text dictation with AI-powered auto-editing"
  homepage "https://wisprflow.ai/"

  livecheck do
    url "https://dl.wisprflow.com/wispr-flow/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Wispr Flow.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.wispr-flow.sfl*",
    "~/Library/Application Support/Wispr Flow",
    "~/Library/Caches/com.electron.wispr-flow",
    "~/Library/Caches/com.electron.wispr-flow.accessibility-mac-app",
    "~/Library/Caches/com.electron.wispr-flow.ShipIt",
    "~/Library/Caches/SentryCrash/Wispr Flow",
    "~/Library/HTTPStorages/com.electron.wispr-flow",
    "~/Library/Logs/Wispr Flow",
    "~/Library/Preferences/com.electron.wispr-flow.plist",
  ]
end
