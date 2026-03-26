cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.25"
  sha256 arm:   "f5788015429c4e2a36a280d471cd613227bee76ce1005da2c73b9676778c2a78",
         intel: "18b52ddadd6282ce625d91851c3a83930d67d7d25e5053758be763c48bbfca37"

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
