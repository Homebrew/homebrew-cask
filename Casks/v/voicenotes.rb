cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.10"
  sha256 arm:   "933418a0aa9658ad240790054c24c771ef195565d47cb92b9719089521629b2e",
         intel: "624932b14f1fbba8364347a486f0c2bc3908e974fbe8f6411e569567594cae9d"

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
