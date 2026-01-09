cask "voicenotes" do
  arch arm: "-arm64"

  version "1.6.10"
  sha256 arm:   "2f9d670d1eae00e5a520d722c8a842f8bc519f83c8ae21d01e2fda0074687ee1",
         intel: "589da1fcb9be836193cd22a1c484b4863f6f4c3c818f569d8a3033a9cfdfda89"

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
