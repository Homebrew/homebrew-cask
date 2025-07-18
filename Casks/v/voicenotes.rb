cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.14"
  sha256 arm:   "5e6084e0d7cc55ae16848010b60ca3e50a5905b64489a7c1511ee0623136ae39",
         intel: "f4012982fd83bd9af99e14a548e8d2003bf9a544348565da316779ea6095176d"

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
