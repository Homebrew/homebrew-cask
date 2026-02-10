cask "voicenotes" do
  arch arm: "-arm64"

  version "1.6.22"
  sha256 arm:   "ecb7ae6e48543b9fc6d084d567510423eb563ba5b40c350272c684b52c32df36",
         intel: "f0f874c0666f5db90b8f9c86c0fb9d4e809962770f17a11d739f1e87f0fab71f"

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
