cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.8"
  sha256 arm:   "b8a366d6c6c310cf17c11ce05d7716d1cf6439b993f12c21d35769294e992817",
         intel: "42251838a3728cce523d6e73499cb090112ed82dcae49fd3363f65935ca57ede"

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
