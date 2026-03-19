cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.14"
  sha256 arm:   "8e397aca9d75aabb7b12d38ec73b1eb3b5dcdeb9258d891c44d39cc03b030a87",
         intel: "b53a0a072e13e40da1d9e4a45a55773a618f4383aed6c5a26150a715ea5cc5fb"

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
