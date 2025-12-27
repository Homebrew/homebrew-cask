cask "voicenotes" do
  arch arm: "-arm64"

  version "1.5.2"
  sha256 arm:   "5b18090b2c71f46a536c8320e8128ff029e1aaa7be2e5a2a5572660f5cf1df80",
         intel: "cef14232142d271a8476d03362fe85cb4405e19212c01d8dbb953229dd5b73f9"

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
