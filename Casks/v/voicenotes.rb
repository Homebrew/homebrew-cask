cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.12"
  sha256 arm:   "79307b78f70bc3b392b966d5945be1d93e0c47795aa19ee8f4320beb4a5a6698",
         intel: "b5424b7721c106553d1718ce2abe5dc34adde01ad9faa9220edc40018ddc6d40"

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
