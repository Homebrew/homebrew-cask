cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.2"
  sha256 arm:   "a060e447d317ad9211b4381f9a5b0b1fd403eebc592e915fca4b9284ead00db7",
         intel: "fe5af1d73be721ed348acb147bd3887faf270472508366a8eeccd3cd5253df1b"

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
