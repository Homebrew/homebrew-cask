cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.11"
  sha256 arm:   "7d37056e85a26573051f7f4e8ef0774d9863b78ae32878c3178314747e470943",
         intel: "f3d0555ec7c369a0a418b37e50e0ae08fa0c18785bf7fe2a184fe65d6b6a5e93"

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
