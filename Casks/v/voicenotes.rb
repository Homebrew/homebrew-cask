cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.13"
  sha256 arm:   "58f349b8a4d4b76e242af56e325ac8af985021c3e14a09ded1bdd7c18d676064",
         intel: "3af531f90263f19a5bbd194ecf081f7f8883a6e7d11c007dadec6599ea3d4edf"

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
