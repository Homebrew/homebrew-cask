cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.9"
  sha256 arm:   "f952d2ee594d85ac642681a30708673c6a32d27c9022a63816abc3b85d02d107",
         intel: "18ad8830f1b5e10668845e50cc91ea9413fbb7a913533675bef0389531c52f4b"

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
