cask "wispr-flow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1144"
  sha256 arm:   "cdc88eef8b4c680b539852560f885f68d60bbfd3c374c43f3e65962ac95f0d09",
         intel: "38f727a575ae72a73e66f549ad16911ca0a2199e2c3b5bc8624aa2bb9e4a993e"

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
