cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.1"
  sha256 arm:   "b83e05a66677853b09371e8eaf4ddee0ebbec2b6388e8942ef3e670e1501b739",
         intel: "03e5f9e2472cf4dc395e3f4a953796ead509bf87de063d3272c333da6a419f2b"

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
