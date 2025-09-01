cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.25"
  sha256 arm:   "8ede025fe42a674b53af8f8f0c3b7885cfc2f7984e11005749c48d4caad0ed39",
         intel: "cdced8751e48dbe8eddee4047ddc64a3fd20e93b7b5a794ccb277ee91b8345e5"

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
