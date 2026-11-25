cask "wispr-flow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1619"
  sha256 arm:   "2a654ac685222808c34bea21ec3ff85035d64856bfc7fe239fb6c646e017ba48",
         intel: "64a3dfabb229eb7b1a4579e0fe1506d27e32ede92655ce12ac5c0958e1136b51"

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
