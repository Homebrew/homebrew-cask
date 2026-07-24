cask "wispr-flow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.224"
  sha256 arm:   "8c047d3c266800ffd37fda0fc60f9fc9b8c79de981351ac9d016eb1db8e7c749",
         intel: "f5ebb00d7113f938ca6593646a1dac03c01d77d8b85d6b716466edc0f10b7481"

  url "https://dl.wisprflow.com/wispr-flow/darwin/#{arch}/dmgs/Flow-v#{version}.dmg",
      verified: "dl.wisprflow.com/wispr-flow/"
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
