cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.0"
  sha256 arm:   "f55e5dc1a95f003520812cac71403e75c5fe1b3db4e17209b1a14ab74fd3e357",
         intel: "44a64ebf601e29c930c10817f38b10a281ff30f47486699f32636ed48b7e176b"

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
