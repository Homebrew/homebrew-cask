cask "voicenotes" do
  arch arm: "-arm64"

  version "1.5.1"
  sha256 arm:   "117e9b5c8da2325cb986f884eaa3c6a961aaa15fe8e6367e28bcc9a82ba8f32d",
         intel: "06ebc1987a5ef18d27521b5c597528a97b310d95b48edd1a8f806d1b5c7ee4cc"

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
