cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.8"
  sha256 arm:   "d64c57cbd0372bcf11896e4191ee61668f9262406d2f314f4cf8b88a469070d7",
         intel: "39e9fa7833f6a038fffc054b39c968ba3153df375b4b512c38dc44780b5262a2"

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
