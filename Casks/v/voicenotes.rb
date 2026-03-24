cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.20"
  sha256 arm:   "094f01c9ad850760a9bc060434935a8d2258436f559eb5aab0b068167310e59b",
         intel: "bf5c5cf21d78ee4eb5f0462dfedcc7759d6e14666bfe64d9c508f9e2d342a3ae"

  url "https://github.com/brewdotcom/vn-apps-release/releases/download/#{version}/Voicenotes-#{version}#{arch}.dmg",
      verified: "github.com/brewdotcom/vn-apps-release/"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing and summarising voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
