cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.11"
  sha256 arm:   "186e1a4dcc5d3e3eb93dd1ae3ba75dfc2190782a176cfb779d8c1690f60772df",
         intel: "6fb5f5d9b1c30705bc196f0fd2da1004235150f2b9ac4c080e11168a8fce866f"

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
