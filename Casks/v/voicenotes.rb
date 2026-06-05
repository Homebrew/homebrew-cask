cask "voicenotes" do
  arch arm: "-arm64"

  version "1.8.3"
  sha256 arm:   "e4ee4c395c7ec02a07e4cd95259a17c5a38ada0febe0009171ec9e57e8ed23bc",
         intel: "3db3e0bda782d2e37a69299ad46b23fa1b6bb037e2644d9566119de657b52fe3"

  url "https://github.com/brewdotcom/vn-apps-release/releases/download/#{version}/Voicenotes-#{version}#{arch}.dmg",
      verified: "github.com/brewdotcom/vn-apps-release/"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing and summarising voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
