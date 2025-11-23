cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.15"
  sha256 arm:   "da81783a6229e3d969156067027c08c04ca88caa42637ba66500f447a1b7a3c6",
         intel: "658a3f23c599b4af63d7637148ab6fdae5d2a15822d2e23c0af05df4a18869f4"

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
