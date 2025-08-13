cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.17"
  sha256 arm:   "2cec948a39affa337c6ba071dd5f13e8bcd5155b1e7d22eba541d02fea9730a3",
         intel: "cd2fd1aec6428eadd69ace40877393277d71216bb7d2034bcf5cb1adc4c61483"

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
