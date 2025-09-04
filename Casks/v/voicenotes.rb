cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.27"
  sha256 arm:   "6dfc78c72a4dc913d89aac7b53f5b57bd3359d2e0b0aae73e62df0f864a4bbb3",
         intel: "e7178607dd7ad693f0f2070327eb6e47a0e51ee0c757276af3c9357713b3ae1d"

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
