cask "voicenotes" do
  arch arm: "-arm64"

  version "1.8.1"
  sha256 arm:   "db736794c15944eeace0a6bfeebe47def5db5a21831b9580bc4c388eab821909",
         intel: "8870e74bce7110f40970e0b2a3a1484be55da5e5cb5519f74340a2e2556715a4"

  url "https://github.com/brewdotcom/vn-apps-release/releases/download/#{version}/Voicenotes-#{version}#{arch}.dmg",
      verified: "github.com/brewdotcom/vn-apps-release/"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing and summarising voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
