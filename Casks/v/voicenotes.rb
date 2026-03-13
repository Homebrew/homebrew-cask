cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.12"
  sha256 arm:   "511d09b129dd1e59db2a2887b7b284bd325b1d9815216e4d3054bb0c25c4ece6",
         intel: "64e6a225d3925fc1d770266e6dab447ca94f712f24ed9a6d10c96d09ff6d1739"

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
