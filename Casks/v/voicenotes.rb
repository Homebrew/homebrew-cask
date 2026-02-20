cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.5"
  sha256 arm:   "6e6cc39e3784dd32157be78e40d656f69a730f2135af0977d17b6ccdb7f0881f",
         intel: "d8a81bcb81ee05b35a85418e6a932a4b737c91a488b25982e193221f11e5a258"

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
