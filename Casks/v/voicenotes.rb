cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.10"
  sha256 arm:   "0617577a098ccd13850a6b61319cd6917b4573088d7613ff778c4a8a3762995c",
         intel: "c47c5bb7473646ceb45332023aa23fae513454dccd3d517817400dfecef6e12f"

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
