cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.5"
  sha256 arm:   "3c477ae250f273e843d61946ce29bb3b9c3ce5504bf25e1b759a1e24bfe7b217",
         intel: "3ad1b4482d4068e33015570bdf85c5a583a79caf39a627badfbda997ade2450c"

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
