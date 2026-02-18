cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.1"
  sha256 arm:   "27bab61e707653cc3f2e6e364ed6372c3ec74fd3c356a10a10e69ba066d33c8c",
         intel: "2123ca6586bce6347bc8ddc25f00674ead50034490b7a33d5df786d858cec9cf"

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
