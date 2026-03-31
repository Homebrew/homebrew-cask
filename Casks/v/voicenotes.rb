cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.26"
  sha256 arm:   "92210723c379909661d909e0f740a4b42357407d1ed203ce3c3ad95ce07f8021",
         intel: "a283a24f1d99f9811232b6b407385b776e53e22f4a36a182a62674c77eee8a16"

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
