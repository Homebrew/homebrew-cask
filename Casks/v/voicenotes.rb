cask "voicenotes" do
  arch arm: "-arm64"

  version "1.6.8"
  sha256 arm:   "56d9ce289e935ca1ccbc2433a63e49a0db22d75589e00f853c501f1f10be9b59",
         intel: "302686d0e9dcb48cb1e7dd10d433851a43e87411a000576380b05f5fa36feb94"

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
