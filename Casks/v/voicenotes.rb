cask "voicenotes" do
  arch arm: "-arm64"

  version "1.6.0"
  sha256 arm:   "67cef14ecd8721ce2cce5c38153894e7008dcf34e194411024f0a68c824ee640",
         intel: "c7f03e4f78533106218e415b46671c40ba65908e62955b1a1ff5cd95e27ee5cf"

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
