cask "voicenotes" do
  arch arm: "-arm64"

  version "1.6.1"
  sha256 arm:   "a70223e30695b27ffa6746a9e80970d6de7637e7b675bd4cb8082305f4466b9b",
         intel: "3fa7aae341ebe00f9d062d42c109cfd055e4ad29e65c37d8f483c40c9522a813"

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
