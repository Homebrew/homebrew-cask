cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.2"
  sha256 arm:   "bb5e39c60290d5ef4c3d0ef34a7cdf8f44dbc23b8fd7f495b25b7a4197d2d267",
         intel: "9492813c7f6d64023c51a670c0d2fe42682b2d9b599adc1d2b99afac03603a42"

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
