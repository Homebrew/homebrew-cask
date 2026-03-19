cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.15"
  sha256 arm:   "6fee57c88277716319bde10da1219a2a9194fccee1e3661b0ebbe57752e9cd89",
         intel: "077146a451ac6706265368f6b23a42462c48afd10f83fa0a328b88b0c9b0c7a9"

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
