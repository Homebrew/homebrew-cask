cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.31"
  sha256 arm:   "74cd90416ba286f8a3abac520932daf387c1a6742498e4ea4a43807519fe5de8",
         intel: "351ebde066a9f0cfd2c42451c5e31dc383b0d8c4a876a33cc7541eeceb0b5b94"

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
