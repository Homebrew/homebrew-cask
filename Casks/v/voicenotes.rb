cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.40"
  sha256 arm:   "e415086bf8e1aa82b3a938a15fbb0990abf91b3c63c3a873db1fea6d57ffe8fc",
         intel: "20630b4dbbd33e4c2d7561fbb76b266d2082c2b02ab02b0b2629a08ff7f0a215"

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
