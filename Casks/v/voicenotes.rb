cask "voicenotes" do
  arch arm: "-arm64"

  version "1.8.2"
  sha256 arm:   "4071a847fc74fd7be973866305a487bb2308090100bf411d8e2108b6065668c2",
         intel: "d8073203d5f98fe96b524a4d08ab6199c3e92026bc1f1eb12f1da60179159f35"

  url "https://github.com/brewdotcom/vn-apps-release/releases/download/#{version}/Voicenotes-#{version}#{arch}.dmg",
      verified: "github.com/brewdotcom/vn-apps-release/"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing and summarising voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
