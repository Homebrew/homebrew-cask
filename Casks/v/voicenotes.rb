cask "voicenotes" do
  arch arm: "-arm64"

  version "1.6.11"
  sha256 arm:   "18afcdd97b1fba31bb10d774606d4a55c1eeee23891587b1a7349a4a455f4ed3",
         intel: "4b643a7f360fee5848c95683f97c03d8af67cd87fb743cb2c33c2aa769786bc7"

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
